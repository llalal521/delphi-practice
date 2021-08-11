unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzCalcEdit, cxTextEdit, cxMemo, cxRichEdit, RzButton, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit;

type
  TForm1 = class(TForm)
    btnTestRaize: TRzButton;
    editTestDevExpress: TcxRichEdit;
    edtfsvcl: TRzCalcEdit;
    btnTestNativeXml: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnTestRaizeClick(Sender: TObject);
    procedure btnTestNativeXmlClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  CodeSiteLogging, NativeXml;


{$R *.dfm}

procedure TForm1.btnTestNativeXmlClick(Sender: TObject);
var
  Xml: TNativeXml;
begin
  Xml := TNativeXml.Create(nil);
  try
    //Xml.LoadFromFile('test.xml');
  finally
    Xml.Free;
  end;
end;

procedure TForm1.btnTestRaizeClick(Sender: TObject);
begin
  CodeSite.Send('btnTestRaizeClick.Click');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  CodeSite.Send('Hello, CodeSite');
end;

end.
