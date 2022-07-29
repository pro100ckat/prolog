﻿% Copyright 

implement aboutDialog inherits dialog
    open vpiDomains

clauses
    display(Parent) = Dialog :-
        Dialog = new(Parent),
        Dialog:show().


constants
    versionString1 : string = "{FileDescription}".
    versionString2 : string = "Version {FileVersionA}.{FileVersionB}\n{LegalCopyright}\n{CompanyName}".

constructors
    new : (window Parent).
clauses
    new(Parent) :-
        dialog::new(Parent),
        generatedInitialize(),
        version1_ctl:setText(versionString1),
        version2_ctl:setText(versionString2),
        addShowListener(
            {  :-
                F1 = vpiDomains::fromFont_logfont(version1_ctl:getFont()),
                gui_native::logfont(Height, Width, Esc, Ori, _Weight, Italic, Underline, StrikeOut, CharSet, OutPrec, ClipPrec, Qual, Pitch, Face) = F1,
                F2 = gui_native::logfont(Height * 3 div 2, Width, Esc, Ori, 800, Italic, Underline, StrikeOut, CharSet, OutPrec, ClipPrec, Qual, Pitch, Face),
                version1_ctl:setFont(uncheckedConvert(font, F2))
            }).

% This code is maintained automatically, do not update it manually.
%  01:00:27-23.10.2015

facts
    version1_ctl : versioncontrol.
    version2_ctl : versioncontrol.

predicates
    generatedInitialize : ().
clauses
    generatedInitialize() :-
        setText("About"),
        setRect(rct(122, 26, 386, 214)),
        setModal(true),
        setDecoration(titlebar([closeButton])),
        setState([wsf_NoClipSiblings]),
        Icon1_ctl = iconControl::new(This),
        Icon1_ctl:setIcon(application_icon),
        Icon1_ctl:setPosition(16, 12),
        version1_ctl := versioncontrol::new(This),
        version1_ctl:setPosition(16, 42),
        version1_ctl:setSize(232, 20),
        GroupBox_ctl = groupBox::new(This),
        GroupBox_ctl:setText(""),
        GroupBox_ctl:setPosition(8, 76),
        GroupBox_ctl:setSize(248, 56),
        version2_ctl := versioncontrol::new(GroupBox_ctl),
        version2_ctl:setPosition(7, 2),
        version2_ctl:setSize(232, 38),
        version2_ctl:setTabStop(true),
        version2_ctl:setAlignBaseline(true),
        ButtonOk = button::newOk(This),
        ButtonOk:setText("&OK"),
        ButtonOk:setPosition(100, 152),
        ButtonOk:setWidth(56),
        ButtonOk:defaultHeight := true.
% end of automatic code

end implement aboutDialog
