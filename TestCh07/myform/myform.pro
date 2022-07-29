% Copyright

implement myform inherits formWindow
    open core, vpiDomains

clauses
    display(Parent) = Form :-
        Form = new(Parent),
        Form:show().

clauses
    new(Parent) :-
        formWindow::new(Parent),
        generatedInitialize().

predicates
    onEditModified : editControl::modifiedListener.
clauses
    onEditModified(_Source).

predicates
    onOkClick : button::clickResponder.
clauses
    onOkClick(Source) = Answer :-
        exception::raise_error("Not implemented").

% This code is maintained automatically, do not update it manually.
%  17:51:22-6.12.2017

facts
    ok_ctl : button.
    cancel_ctl : button.
    edit_ctl : editControl.
    edit1_ctl : editControl.
    edit2_ctl : editControl.
    edit3_ctl : editControl.
    edit4_ctl : editControl.
    edit5_ctl : editControl.
    edit6_ctl : editControl.
    edit7_ctl : editControl.
    edit8_ctl : editControl.
    edit9_ctl : editControl.
    edit10_ctl : editControl.
    edit11_ctl : editControl.
    edit12_ctl : editControl.
    edit13_ctl : editControl.
    edit14_ctl : editControl.
    edit15_ctl : editControl.
    вредныеПривычки_ctl : textControl.
    edit16_ctl : editControl.
    дополнительныеУсловия_ctl : textControl.
    наличинеДетей_ctl : textControl.
    владениеЖильем_ctl : textControl.

predicates
    generatedInitialize : ().
clauses
    generatedInitialize() :-
        setText("myform"),
        setRect(rct(50, 40, 395, 234)),
        setDecoration(titlebar([closeButton, maximizeButton, minimizeButton])),
        setBorder(sizeBorder()),
        setState([wsf_ClipSiblings, wsf_ClipChildren]),
        menuSet(noMenu),
        ok_ctl := button::newOk(This),
        ok_ctl:setText("Добавить человека"),
        ok_ctl:setPosition(4, 168),
        ok_ctl:setSize(76, 16),
        ok_ctl:defaultHeight := false,
        ok_ctl:setAnchors([control::right, control::bottom]),
        ok_ctl:setClickResponder(onOkClick),
        cancel_ctl := button::newCancel(This),
        cancel_ctl:setText("Выход"),
        cancel_ctl:setPosition(280, 168),
        cancel_ctl:setSize(56, 16),
        cancel_ctl:defaultHeight := false,
        cancel_ctl:setAnchors([control::right, control::bottom]),
        edit_ctl := editControl::new(This),
        edit_ctl:setText(""),
        edit_ctl:setPosition(80, 14),
        edit_ctl:addModifiedListener(onEditModified),
        StaticText_ctl = textControl::new(This),
        StaticText_ctl:setText("Введите ФИО"),
        StaticText_ctl:setPosition(4, 14),
        StaticText_ctl:setSize(68, 10),
        edit1_ctl := editControl::new(This),
        edit1_ctl:setText(""),
        edit1_ctl:setPosition(132, 14),
        edit2_ctl := editControl::new(This),
        edit2_ctl:setText(""),
        edit2_ctl:setPosition(188, 14),
        StaticText1_ctl = textControl::new(This),
        StaticText1_ctl:setText("Введите возраст"),
        StaticText1_ctl:setPosition(4, 28),
        StaticText1_ctl:setSize(68, 10),
        StaticText2_ctl = textControl::new(This),
        StaticText2_ctl:setText("Национальность"),
        StaticText2_ctl:setPosition(4, 46),
        StaticText2_ctl:setSize(68, 10),
        StaticText3_ctl = textControl::new(This),
        StaticText3_ctl:setText("Образование"),
        StaticText3_ctl:setPosition(4, 66),
        StaticText3_ctl:setSize(68, 10),
        StaticText4_ctl = textControl::new(This),
        StaticText4_ctl:setText("Доход"),
        StaticText4_ctl:setPosition(4, 84),
        StaticText4_ctl:setSize(68, 10),
        StaticText5_ctl = textControl::new(This),
        StaticText5_ctl:setText("Владение жильем"),
        StaticText5_ctl:setPosition(4, 114),
        StaticText5_ctl:setSize(68, 10),
        StaticText6_ctl = textControl::new(This),
        StaticText6_ctl:setText("Наличине детей"),
        StaticText6_ctl:setPosition(4, 132),
        StaticText6_ctl:setSize(68, 12),
        StaticText7_ctl = textControl::new(This),
        StaticText7_ctl:setText("Вредные привычки"),
        StaticText7_ctl:setPosition(4, 150),
        StaticText7_ctl:setSize(68, 10),
        edit3_ctl := editControl::new(This),
        edit3_ctl:setText(""),
        edit3_ctl:setPosition(80, 30),
        edit4_ctl := editControl::new(This),
        edit4_ctl:setText("rus"),
        edit4_ctl:setPosition(80, 46),
        edit5_ctl := editControl::new(This),
        edit5_ctl:setText("net"),
        edit5_ctl:setPosition(80, 64),
        edit6_ctl := editControl::new(This),
        edit6_ctl:setText(""),
        edit6_ctl:setPosition(80, 84),
        edit7_ctl := editControl::new(This),
        edit7_ctl:setText("da"),
        edit7_ctl:setPosition(76, 114),
        edit8_ctl := editControl::new(This),
        edit8_ctl:setText("net"),
        edit8_ctl:setPosition(76, 130),
        edit9_ctl := editControl::new(This),
        edit9_ctl:setText("ne_vagno"),
        edit9_ctl:setPosition(76, 148),
        StaticText8_ctl = textControl::new(This),
        StaticText8_ctl:setText("Дополнительные условия:"),
        StaticText8_ctl:setPosition(4, 100),
        StaticText8_ctl:setSize(96, 10),
        StaticText9_ctl = textControl::new(This),
        StaticText9_ctl:setText("Требования к партнеру"),
        StaticText9_ctl:setPosition(240, 14),
        StaticText9_ctl:setSize(100, 10),
        StaticText10_ctl = textControl::new(This),
        StaticText10_ctl:setText("Образование"),
        StaticText10_ctl:setPosition(240, 32),
        StaticText11_ctl = textControl::new(This),
        StaticText11_ctl:setText("Возраст"),
        StaticText11_ctl:setPosition(240, 52),
        StaticText12_ctl = textControl::new(This),
        StaticText12_ctl:setText("Начиональность"),
        StaticText12_ctl:setPosition(240, 72),
        StaticText13_ctl = textControl::new(This),
        StaticText13_ctl:setText("Доход"),
        StaticText13_ctl:setPosition(240, 88),
        edit10_ctl := editControl::new(This),
        edit10_ctl:setText("vischee"),
        edit10_ctl:setPosition(292, 30),
        edit11_ctl := editControl::new(This),
        edit11_ctl:setText(""),
        edit11_ctl:setPosition(292, 50),
        edit12_ctl := editControl::new(This),
        edit12_ctl:setText("urk"),
        edit12_ctl:setPosition(292, 70),
        edit13_ctl := editControl::new(This),
        edit13_ctl:setText(""),
        edit13_ctl:setPosition(292, 86),
        edit14_ctl := editControl::new(This),
        edit14_ctl:setText("ne_vagno"),
        edit14_ctl:setPosition(292, 114),
        edit15_ctl := editControl::new(This),
        edit15_ctl:setText("ne_vagno"),
        edit15_ctl:setPosition(292, 130),
        edit16_ctl := editControl::new(This),
        edit16_ctl:setText("ne_vagno"),
        edit16_ctl:setPosition(292, 148),
        владениеЖильем_ctl := textControl::new(This),
        владениеЖильем_ctl:setText("Владение жильем"),
        владениеЖильем_ctl:setPosition(220, 114),
        владениеЖильем_ctl:setSize(68, 10),
        наличинеДетей_ctl := textControl::new(This),
        наличинеДетей_ctl:setText("Наличине детей"),
        наличинеДетей_ctl:setPosition(220, 132),
        наличинеДетей_ctl:setSize(68, 12),
        дополнительныеУсловия_ctl := textControl::new(This),
        дополнительныеУсловия_ctl:setText("Дополнительные условия:"),
        дополнительныеУсловия_ctl:setPosition(220, 100),
        дополнительныеУсловия_ctl:setSize(96, 10),
        вредныеПривычки_ctl := textControl::new(This),
        вредныеПривычки_ctl:setText("Вредные привычки"),
        вредныеПривычки_ctl:setPosition(220, 150),
        вредныеПривычки_ctl:setSize(68, 10).
% end of automatic code

end implement myform
