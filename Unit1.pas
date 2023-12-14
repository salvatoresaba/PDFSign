unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.IOUtils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Pkcs11, Pdf, Cert,
  JsonObject, BinData, IniFiles, ShellAPI,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Menus, System.RegularExpressions;

type
  TFormPdfSign = class(TForm)
    ButtonFirma: TButton;
    MemoLog: TMemo;
    Panel1: TPanel;
    LabelLib: TLabel;
    EditOpenDialogLib: TEdit;
    OpenDialogLib: TOpenDialog;
    ButtonOpenDialogLib: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    ListBoxFiles: TListBox;
    Panel2: TPanel;
    LabelPin: TLabel;
    EditPin: TEdit;
    ButtonAddFiles: TButton;
    OpenDialogFiles: TFileOpenDialog;
    ButtonAddDir: TButton;
    PopupMenu1: TPopupMenu;
    Selezionatutti1: TMenuItem;
    Cancella1: TMenuItem;
    GroupBoxFirma: TGroupBox;
    CheckBoxData: TCheckBox;
    CheckBoxAutoCredentials: TCheckBox;
    Label1: TLabel;
    EditNome: TEdit;
    Label2: TLabel;
    EditCognome: TEdit;
    Label3: TLabel;
    EditPosX: TEdit;
    Label4: TLabel;
    EditPosY: TEdit;
    CheckBoxLuogo: TCheckBox;
    EditLuogo: TEdit;
    CheckBoxLogo: TCheckBox;
    ProgressBar1: TProgressBar;
    ButtonCleanMemo: TButton;
    Panel3: TPanel;
    LabelPagina: TLabel;
    EditPagina: TEdit;
    procedure ButtonFirmaClick(Sender: TObject);
    procedure ButtonOpenDialogLibClick(Sender: TObject);
    procedure ButtonAddFilesClick(Sender: TObject);
    procedure ButtonAddDirClick(Sender: TObject);
    procedure Selezionatutti1Click(Sender: TObject);
    procedure Cancella1Click(Sender: TObject);
    procedure CheckBoxLuogoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditPinKeyPress(Sender: TObject; var Key: Char);
    procedure EditPinChange(Sender: TObject);
    procedure ButtonCleanMemoClick(Sender: TObject);
    procedure EditPaginaChange(Sender: TObject);

  private
    IniFileName: string;
    function IsPDFFile(const FileName: string): Boolean;
    function SignAllPdf(Cert: HCkCert): Boolean;
    function EstraiNome(const input: string): TStringList;
    procedure SaveState;
    procedure LoadState;
    procedure UpdateProgressBar(Percentage: Integer);
    function CopyFileToDirectory(const FileName,
      DestinationDirectory: string): Boolean;

    { Private declarations }
  protected
    procedure WMDropFiles(var Message: TWMDropFiles); message WM_DROPFILES;
  public
    { Public declarations }
  end;

var
  FormPdfSign: TFormPdfSign;

implementation

{$R *.dfm}

function TFormPdfSign.IsPDFFile(const FileName: string): Boolean;
begin
  Result := SameText(ExtractFileExt(FileName), '.pdf');
end;

procedure TFormPdfSign.Selezionatutti1Click(Sender: TObject);
begin
  // Seleziona tutti gli elementi nella TListBox
  ListBoxFiles.SelectAll;
end;

procedure TFormPdfSign.ButtonAddDirClick(Sender: TObject);
var
  SearchRec: TSearchRec;
  SelectedFiles: TStringList;
  FileName: string;
begin
  SelectedFiles := TStringList.Create;
  try
    OpenDialogFiles.Options := [fdoAllowMultiSelect, fdoPickFolders];
    // Mostra la finestra di dialogo per la selezione del file
    if OpenDialogFiles.Execute then
    begin
      // Aggiungi i percorsi dei file selezionati all'elenco
      for FileName in OpenDialogFiles.Files do
      begin
        if DirectoryExists(FileName) then
        begin
          if FindFirst(IncludeTrailingPathDelimiter(FileName) + '*.pdf',
            faAnyFile, SearchRec) = 0 then
          begin
            repeat
              if (SearchRec.Name <> '.') and (SearchRec.Name <> '..') then
                SelectedFiles.Add(IncludeTrailingPathDelimiter(FileName) +
                  SearchRec.Name);
            until FindNext(SearchRec) <> 0;
            FindClose(SearchRec);
          end;
        end;
      end;

      // Aggiungi l'elenco dei file al ListBox
      ListBoxFiles.Items.AddStrings(SelectedFiles);
    end;
  finally
    SelectedFiles.Free;
  end;
end;

procedure TFormPdfSign.ButtonAddFilesClick(Sender: TObject);
var
  SelectedFiles: TStringList;
  FileName: string;
begin
  SelectedFiles := TStringList.Create;
  try
    OpenDialogFiles.Options := [fdoAllowMultiSelect];
    // Mostra la finestra di dialogo per la selezione del file
    if OpenDialogFiles.Execute then
    begin
      // Aggiungi i percorsi dei file selezionati all'elenco
      for FileName in OpenDialogFiles.Files do
      begin
        if FileExists(FileName) and IsPDFFile(FileName) then
          SelectedFiles.Add(FileName)

      end;
    end;
    // Aggiungi l'elenco dei file al ListBox
    ListBoxFiles.Items.AddStrings(SelectedFiles);
  finally
    SelectedFiles.Free;
  end;
end;

procedure TFormPdfSign.ButtonCleanMemoClick(Sender: TObject);
begin
  MemoLog.Clear;
end;

procedure TFormPdfSign.ButtonFirmaClick(Sender: TObject);
var
  Pkcs11: HCkPkcs11;
  pin, lib: PWideChar;
  userType: Integer;
  success: Boolean;
  Cert: HCkCert;
  s: string;
begin
  // This example requires the Chilkat API to have been previously unlocked.
  // See Global Unlock Sample for sample code.

  // Note: Chilkat's PKCS11 implementation runs on Windows, Linux, Mac OS X, and other supported operating systems.

  Pkcs11 := CkPkcs11_Create();

  lib := PChar(EditOpenDialogLib.Text);
  pin := PChar(EditPin.Text);
  CkPkcs11_putSharedLibPath(Pkcs11, lib);

  userType := 1;

  // Establish a PKCS11 logged-on session using the driver (.so, .dylib, or .dll) as specified in the SharedLibPath above.
  success := CkPkcs11_QuickSession(Pkcs11, userType, pin);
  if (success = False) then
  begin
    MemoLog.Lines.Add(CkPkcs11__lastErrorText(Pkcs11));
    Exit;
  end;

  // Get the certificate (on the smart card) that has a private key.
  // There are other ways to locate a certificate on the HSM.
  // This example assumes there is a single certificate w/ private key.

  Cert := CkCert_Create();
  success := CkPkcs11_FindCert(Pkcs11, 'privateKey', '', Cert);
  if (success = True) then
  begin
    // MemoLog.Lines.Add('Cert with private key: ' + CkCert__subjectCN(cert)+' '+ CkCert__subjectS(cert));
    s := 'Cert with private key: ' + CkCert__subjectCN(Cert);
    MemoLog.Lines.Add(s);
  end
  else
  begin
    MemoLog.Lines.Add('No certificates having a private key were found.');
    success := CkPkcs11_CloseSession(Pkcs11);
    Exit;
  end;

  // --------------------------------------------------------------------------
  // At this point, we have the cert to be used for signing.
  // Our PDF signing code is the same as for a cert obtained from any other source..

  success := SignAllPdf(Cert);
  if (success = False) then
  begin
    success := CkPkcs11_CloseSession(Pkcs11);
    CkPkcs11_Dispose(Pkcs11);
    CkCert_Dispose(Cert);

    ShowMessage('Errore nella elaborazione firme!', [tfSizeToContent]);
    ProgressBar1.Position:=0;
    Exit;
  end;

  // --------------------------------------------------------------------------

  // Revert to an unauthenticated session by calling Logout.
  success := CkPkcs11_Logout(Pkcs11);
  if (success = False) then
  begin
    MemoLog.Lines.Add(CkPkcs11__lastErrorText(Pkcs11));
    success := CkPkcs11_CloseSession(Pkcs11);
    Exit;
  end;

  // When finished, close the session.
  // It is important to close the session (memory leaks will occur if the session is not properly closed).
  success := CkPkcs11_CloseSession(Pkcs11);
  if (success = False) then
  begin
    MemoLog.Lines.Add(CkPkcs11__lastErrorText(Pkcs11));
    Exit;
  end;

  MemoLog.Lines.Add('Success.');

  CkPkcs11_Dispose(Pkcs11);
  CkCert_Dispose(Cert);

  ShowMessage('Elaborazione firme completata!', [tfSizeToContent]);
  ProgressBar1.Position:=0;
end;

function TFormPdfSign.SignAllPdf(Cert: HCkCert): Boolean;
var
  Pdf: HCkPdf;
  json: HCkJsonObject;
  jpgData: HCkBinData;
  i, n, TotalFiles: Integer;
  success: Boolean;
  nome: TStringList;
  dir,dirError, output, date: string;
begin
  TotalFiles := ListBoxFiles.Items.Count;
  // Inizializza la ProgressBar
  UpdateProgressBar(0);
  for n := 0 to TotalFiles - 1 do
  begin
    Result := False;
    Pdf := CkPdf_Create();

    // Load a PDF to be signed.
    success := CkPdf_LoadFile(Pdf, PChar(FormPdfSign.ListBoxFiles.Items[n]));
    if (success = False) then
    begin
      MemoLog.Lines.Add(CkPdf__lastErrorText(Pdf));
      MemoLog.Lines.Add(IntToStr(n) + ' files convertiti.\nErrore al file: ' +
        FormPdfSign.ListBoxFiles.Items[n]);
      dirError := GetCurrentDir + '\error';
      CopyFileToDirectory(FormPdfSign.ListBoxFiles.Items[n],dirError);
      Continue;
    end;

    nome := TStringList.Create;
    if CheckBoxAutoCredentials.Checked then
      nome := EstraiNome(CkCert__subjectDN(Cert));
    if nome.Count <> 2 then
    begin
      nome.Add(EditNome.Text);
      nome.Add(EditCognome.Text);
    end;
    json := CkJsonObject_Create();

    // In most cases, the signingCertificateV2 and signingTime attributes are required.
    CkJsonObject_UpdateInt(json, 'signingCertificateV2', 1);
    CkJsonObject_UpdateInt(json, 'signingTime', 1);
    CkJsonObject_UpdateInt(json, 'contentType', 1);
    CkJsonObject_UpdateInt(json, 'messageDigest', 1);


    CkJsonObject_UpdateInt(json, 'page', StrToInt(EditPagina.Text));
    CkJsonObject_UpdateString(json, 'appearance.y', PChar(EditPosY.Text));
    // 'top' o 0-792
    CkJsonObject_UpdateString(json, 'appearance.x', PChar(EditPosX.Text));
    // 'left'o 0-612
    CkJsonObject_UpdateString(json, 'appearance.fontScale', '9.0');

    CkJsonObject_UpdateString(json, 'hashAlgorithm', 'sha256');
    // CkJsonObject_UpdateString(json,'signingAlgorithm','pkcs');
    CkJsonObject_UpdateString(json, 'signingAlgorithm', 'pss');

    i := 0;
    CkJsonObject_putI(json, i);
    CkJsonObject_UpdateString(json, 'appearance.text[i]',
      PChar('Firmato digitalmente da: ' + nome[0] + ' ' + nome[1]));

    date := '';
    if CheckBoxData.Checked then
    begin
      date := DateToStr(now);
    end;
    if CheckBoxLuogo.Checked then
    begin
      if date = '' then
        date := EditLuogo.Text
      else
        date := EditLuogo.Text + ', ' + date;
    end;
    if date <> '' then
    begin
      i := i + 1;
      CkJsonObject_putI(json, i);
      CkJsonObject_UpdateString(json, 'appearance.text[i]', PChar(date));
    end;
    i := i + 1;
    CkJsonObject_putI(json, i);
    CkJsonObject_UpdateString(json, 'appearance.text[i]', ' ');

    // Aggiunge logo
    if CheckBoxLogo.Checked then
    begin
      jpgData := CkBinData_Create();
      success := CkBinData_LoadFile(jpgData, 'image.jpg');
      if (success = False) then
      begin
        MemoLog.Lines.Add('Failed to load the JPG image.');
        Exit;
      end;
      success := CkPdf_SetSignatureJpeg(Pdf, jpgData);
      if (success = False) then
      begin
        MemoLog.Lines.Add(CkPdf__lastErrorText(Pdf));
        MemoLog.Lines.Add(IntToStr(n) + ' files convertiti.\nErrore al file: ' +
        FormPdfSign.ListBoxFiles.Items[n]);
        Exit;
      end;
      // Specify that we want to display the JPG image in the center with 30% opacity.
      CkJsonObject_UpdateString(json, 'appearance.image', 'custom-jpg');
      // 'signature');
      CkJsonObject_UpdateString(json, 'appearance.imagePlacement', 'left');
      CkJsonObject_UpdateString(json, 'appearance.y', PChar(EditPosY.Text));
      // 'top' o 0-792
      CkJsonObject_UpdateString(json, 'appearance.x', PChar(EditPosX.Text));
      // 'left'o 0-612
      CkJsonObject_UpdateString(json, 'appearance.imageOpacity', '40');
    end;

    // The certificate is internally linked to the Pkcs11 object, which is currently in an authenticated session.
    success := CkPdf_SetSigningCert(Pdf, Cert);

    dir := GetCurrentDir + '\output';
    if not DirectoryExists(dir) then
      CreateDir('output');

    output := dir + '\' + ExtractFileName(FormPdfSign.ListBoxFiles.Items[n]);

    success := CkPdf_SignPdf(Pdf, json, PChar(output));
    if (success = False) then
    begin
      MemoLog.Lines.Add(CkPdf__lastErrorText(Pdf));
      MemoLog.Lines.Add(IntToStr(n) + ' files convertiti.\nErrore al file: ' +
        FormPdfSign.ListBoxFiles.Items[n]);
      Exit;
    end;
    CkJsonObject_Dispose(json);
    CkPdf_Dispose(Pdf);
    if CheckBoxLogo.Checked then
      CkBinData_Dispose(jpgData);

    MemoLog.Lines.Add('Firmato -> ' + FormPdfSign.ListBoxFiles.Items[n]);

    // Calcola la percentuale completata e aggiorna la ProgressBar
    UpdateProgressBar((n + 1) * 100 div TotalFiles);
  end;

  // Resetta la ProgressBar alla fine del processo
  UpdateProgressBar(100);

  Result := True;
end;

procedure TFormPdfSign.ButtonOpenDialogLibClick(Sender: TObject);
begin
  if OpenDialogLib.Execute then
  begin
    // Inserisci il percorso del file nel campo di testo
    EditOpenDialogLib.Text := OpenDialogLib.FileName;
  end;
end;

procedure TFormPdfSign.Cancella1Click(Sender: TObject);
var
  i: Integer;
begin
  // Cancella gli elementi selezionati nella TListBox
  for i := ListBoxFiles.Items.Count - 1 downto 0 do
  begin
    if ListBoxFiles.Selected[i] then
      ListBoxFiles.Items.Delete(i);
  end;
end;

procedure TFormPdfSign.CheckBoxLuogoClick(Sender: TObject);
begin
  EditLuogo.Enabled := CheckBoxLuogo.Checked;
end;

procedure TFormPdfSign.EditPaginaChange(Sender: TObject);
var
  i: Integer;
  NewText: string;
begin
  // Copia solo i caratteri numerici nel nuovo testo
  NewText := '';
  for i := 1 to Length(EditPin.Text) do
  begin
    if EditPin.Text[i] in ['0' .. '9'] then
      NewText := NewText + EditPin.Text[i];
  end;

  if TryStrToInt(NewText, i) then
    if i > 0 then
      // Assegna il nuovo testo al campo di testo
      EditPin.Text := NewText
    else
      EditPin.Text := '1';
end;

procedure TFormPdfSign.EditPinChange(Sender: TObject);
var
  i: Integer;
  NewText: string;
begin
  // Copia solo i caratteri numerici nel nuovo testo
  NewText := '';
  for i := 1 to Length(EditPin.Text) do
  begin
    if EditPin.Text[i] in ['0' .. '9'] then
      NewText := NewText + EditPin.Text[i];
  end;

  // Assegna il nuovo testo al campo di testo
  EditPin.Text := NewText;
end;

procedure TFormPdfSign.EditPinKeyPress(Sender: TObject; var Key: Char);
begin
  // Accetta solo i numeri
  if not(Key in ['0' .. '9', #8, #9]) then
    Key := #0;
end;

function TFormPdfSign.EstraiNome(const input: string): TStringList;
var
  RegEx, RegEx2: TRegEx;
  Match: TMatch;
begin

  Result := TStringList.Create();
  // Definisci il pattern della regex per estrarre le parti desiderate
  RegEx := TRegEx.Create(', G=(.+?), SN=(.+?),');

  // Cerca il match all'interno dell'input
  Match := RegEx.Match(input + ',');

  // Se la regex trova un match, ottieni le parti
  if Match.success then
  begin
    Result.Add(Match.Groups[1].Value); // Prima parte tra ', G=' e ', SN='
    Result.Add(Match.Groups[2].Value); // Seconda parte tra ', SN=' e la fine
  end
  else
  begin
    RegEx2 := TRegEx.Create(', SN=(.+?), G=(.+?),');

    // Cerca il match all'interno dell'input
    Match := RegEx2.Match(input + ',');

    // Se la regex trova un match, ottieni le parti
    if Match.success then
    begin
      Result.Add(Match.Groups[2].Value); // Prima parte tra ', G=' e ', SN='
      Result.Add(Match.Groups[1].Value); // Seconda parte tra ', SN=' e la fine
    end;
  end;
end;

procedure TFormPdfSign.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  // Salva lo stato alla chiusura
  SaveState;
end;

procedure TFormPdfSign.FormCreate(Sender: TObject);
begin
  // accept dropped files (handle is the form's handle)
  DragAcceptFiles(Handle, True);

  // Nome del file INI per memorizzare lo stato
  IniFileName := ChangeFileExt(Application.ExeName, '.ini');

  // Carica lo stato all'avvio
  LoadState;
end;

procedure TFormPdfSign.SaveState;
var
  IniFile: TIniFile;
begin
  // Salva lo stato nei campi del file INI
  IniFile := TIniFile.Create(IniFileName);
  try
    IniFile.WriteString('Stato', 'Pin', EditPin.Text);
    IniFile.WriteString('Stato', 'Nome', EditNome.Text);
    IniFile.WriteString('Stato', 'Cognome', EditCognome.Text);
    IniFile.WriteString('Stato', 'PosX', EditPosX.Text);
    IniFile.WriteString('Stato', 'PosY', EditPosY.Text);
    IniFile.WriteString('Stato', 'Lib', EditOpenDialogLib.Text);
    IniFile.WriteString('Stato', 'Luogo', EditLuogo.Text);
    IniFile.WriteString('Stato', 'Pagina', EditPagina.Text);
    IniFile.WriteBool('Stato', 'CheckBoxData', CheckBoxData.Checked);
    IniFile.WriteBool('Stato', 'CheckBoxLuogo', CheckBoxLuogo.Checked);
    IniFile.WriteBool('Stato', 'CheckBoxLogo', CheckBoxLogo.Checked);
    IniFile.WriteBool('Stato', 'CheckBoxAutoCredentials',
      CheckBoxAutoCredentials.Checked);
  finally
    IniFile.Free;
  end;
end;

procedure TFormPdfSign.LoadState;
var
  IniFile: TIniFile;
begin
  // Carica lo stato dai campi del file INI
  IniFile := TIniFile.Create(IniFileName);
  try
    EditPin.Text := IniFile.ReadString('Stato', 'Pin', '95935');
    EditNome.Text := IniFile.ReadString('Stato', 'Nome', '');
    EditCognome.Text := IniFile.ReadString('Stato', 'Cognome', '');
    EditPosX.Text := IniFile.ReadString('Stato', 'PosX', 'left');
    EditPosY.Text := IniFile.ReadString('Stato', 'PosY', '50');
    EditPagina.Text := IniFile.ReadString('Stato', 'Pagina', '1');
    EditOpenDialogLib.Text := IniFile.ReadString('Stato', 'Lib',
      'C:\Windows\System32\bit4p11.dll');
    EditLuogo.Text := IniFile.ReadString('Stato', 'Luogo', '');

    CheckBoxData.Checked := IniFile.ReadBool('Stato', 'CheckBoxData', False);
    CheckBoxLuogo.Checked := IniFile.ReadBool('Stato', 'CheckBoxLuogo', False);
    CheckBoxLogo.Checked := IniFile.ReadBool('Stato', 'CheckBoxLogo', False);
    CheckBoxAutoCredentials.Checked := IniFile.ReadBool('Stato',
      'CheckBoxAutoCredentials', False);
  finally
    IniFile.Free;
  end;
end;

procedure TFormPdfSign.WMDropFiles(var Message: TWMDropFiles);
var
  SearchRec: TSearchRec;
  SelectedFiles: TStringList;
  numfiles, i: Integer;
  buf: array [0 .. MAX_PATH] of Char;
  FileName: string;
begin
  numfiles := DragQueryFile(Message.Drop, $FFFFFFFF, nil, 0);
  if numfiles > 0 then
  begin
    Application.BringToFront;
    for i := 0 to numfiles - 1 do
    begin
      DragQueryFile(Message.Drop, i, buf, MAX_PATH);
      FileName := buf;
      if IsPDFFile(buf) then
        ListBoxFiles.Items.Add(FileName)
      else
      begin
        if DirectoryExists(FileName) then
        begin
          SelectedFiles := TStringList.Create;
          if FindFirst(IncludeTrailingPathDelimiter(FileName) + '*.pdf',
            faAnyFile, SearchRec) = 0 then
          begin
            repeat
              if (SearchRec.Name <> '.') and (SearchRec.Name <> '..') then
                SelectedFiles.Add(IncludeTrailingPathDelimiter(FileName) +
                  SearchRec.Name);
            until FindNext(SearchRec) <> 0;
            FindClose(SearchRec);
          end;
        end;
        // Aggiungi l'elenco dei file al ListBox
        ListBoxFiles.Items.AddStrings(SelectedFiles);
      end;
    end;
    DragFinish(Message.Drop); // clean up
  end;
end;

procedure TFormPdfSign.UpdateProgressBar(Percentage: Integer);
begin
  Application.ProcessMessages;

  // Assicurati che la percentuale sia compresa tra 0 e 100
  if Percentage < 0 then
    Percentage := 0
  else if Percentage > 100 then
    Percentage := 100;

  // Calcola il valore corrispondente sulla ProgressBar
  ProgressBar1.Position := (Percentage * ProgressBar1.Max) div 100;
end;

function TFormPdfSign.CopyFileToDirectory(const FileName, DestinationDirectory: string): Boolean;
var
  DestPath: string;
begin
  try
    // Ensure the destination directory exists
    if not TDirectory.Exists(DestinationDirectory) then
      TDirectory.CreateDirectory(DestinationDirectory);

    // Build the full destination path
    DestPath := TPath.Combine(DestinationDirectory, TPath.GetFileName(FileName));

    // Copy the file
    TFile.Copy(FileName, DestPath, True);

    Result := True; // Successful copy
  except
    on E: Exception do
    begin
      // Handle exceptions (e.g., file not found, permissions issue)
      // You can log the exception details or handle it as needed
      Result := False;
    end;
  end;
end;

end.

end.
