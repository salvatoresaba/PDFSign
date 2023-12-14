program PdfSign;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {FormPdfSign},
  Pkcs11 in 'Pkcs11.pas',
  Cert in 'Cert.pas',
  JsonObject in 'JsonObject.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPdfSign, FormPdfSign);
  Application.Run;
end.
