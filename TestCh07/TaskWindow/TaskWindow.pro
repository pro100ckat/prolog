% Copyright

implement taskWindow inherits applicationWindow
    open core, vpiDomains

constants
    mdiProperty : boolean = true.

clauses
    new() :-
        applicationWindow::new(),
        generatedInitialize().

class facts
    p : (string ID, string Name, string Name2, string Name3, integer Age, string Nacionalnost, string Obrazovanie, integer Dohod, string Home,
        string Childs, string Bads, string ObrazovanieP, integer AgeP, string NacionalnostP, integer DohodP, string HomeP, string ChildsP,
        string BadsP).

clauses
    listDatabase() :-
        p(ID, Name, Name2, Name3, Age, Nacionalnost, Obrazovanie, Dohod, Home, Childs, Bads, ObrazovanieP, AgeP, NacionalnostP, DohodP, HomeP,
            ChildsP, BadsP),
        stdio::write("ID: ", ID, ", Name: ", Name, ", Name2: ", Name2, ", Name3: ", Name3, ", Age: ", Age, ", Nacionalnost: ", Nacionalnost,
            ", Obrazovanie: ", Obrazovanie, ", Dohod: ", Dohod, ", Home: ", Home, ", Childs: ", Childs, ", Bads: ", Bads, ", ObrazovanieP: ",
            ObrazovanieP, ", AgeP: ", AgeP, ", NacionalnostP: ", NacionalnostP, ", DohodP: ", DohodP, ", HomeP: ", HomeP, ", ChildsP: ", ChildSP,
            ", BadsP: ", BadsP),
        stdIO::nl,
        fail.
    listDatabase().

clauses
    zapros1() :-
        stdio::write(p(_, _, _, _, _, _, _, _, _, "net", _, _, _, _, _, _, _, _)),
        stdIO::write("Zapros1 complited "),
        stdIO::nl,
        fail.
    zapros1().

clauses
    fillDatabase() :-
        assert(
            p("1", "agafonov", "aleksandr", "petrovich", 42, "rus", "vischee", 30000, "da", "ne_vagno", "net", "vischee", 28, "ne_vagno", 40000,
                "net", "net", "net")),
        assert(
            p("2", "fedotova", "olga", "vasilevna", 35, "rus", "srednee", 10000, "net", "net", "net", "ne_vagno", 40, "ne_vagno", 20000, "da", "net",
                "net")),
        assert(
            p("3", "ruprinov", "dmitrii", "viktorovich", 38, "rus", "vischee", 20000, "da", "da", "net", "ne_vagno", 40, "ne_vagno", 30000,
                "ne_vagno", "net", "ne_vagno")),
        assert(
            p("4", "dorogov", "viktor", "nikolaevich", 37, "ukr", "vischee", 40000, "da", "da", "net", "vischee", 35, "ne_vagno", 35000, "ne_vagno",
                "net", "net")),
        assert(
            p("5", "novikov", "viktor", "michailovich", 41, "kaz", "vischee", 30000, "da", "net", "da", "ne_vagno", 38, "ne_vagno", 45000,
                "ne_vagno", "net", "net")),
        assert(
            p("6", "novikov2", "viktor2", "michailovich2", 41, "kaz", "vischee", 30000, "da", "net", "da", "ne_vagno", 38, "ne_vagno", 25000,
                "ne_vagno", "ne_vagno", "ne_vagno")),
        assert(
            p("7", "kovale", "andrey", "vladimirovich", 41, "kaz", "vischee", 15000, "ne_vagno", "ne_vagno", "ne_vagno", "ne_vagno", 20, "ne_vagno",
                15000, "da", "da", "da")),
        stdIO::write("Uploading Completed "),
        stdIO::nl.

predicates
    onShow : window::showListener.
clauses
    onShow(_, _CreationData) :-
        _MessageForm = messageForm::display(This).

class predicates
    onDestroy : window::destroyListener.
clauses
    onDestroy(_).

class predicates
    onHelpAbout : window::menuItemListener.
clauses
    onHelpAbout(TaskWin, _MenuTag) :-
        _AboutDialog = aboutDialog::display(TaskWin).

predicates
    onFileExit : window::menuItemListener.
clauses
    onFileExit(_, _MenuTag) :-
        close().

predicates
    onSizeChanged : window::sizeListener.
clauses
    onSizeChanged(_) :-
        vpiToolbar::resize(getVPIWindow()).

predicates
    onDatabaseFilldatabase : window::menuItemListener.
clauses
    onDatabaseFilldatabase(_Source, _MenuTag) :-
        taskWindow::fillDatabase().

predicates
    onDatabaseListdatabase : window::menuItemListener.
clauses
    onDatabaseListdatabase(_Source, _MenuTag) :-
        taskWindow::listDatabase().

predicates
    onFileNew : window::menuItemListener.
clauses
    onFileNew(_Source, _MenuTag) :-
        _ = myform::display(This).

predicates
    onZaprosiZapros1 : window::menuItemListener.
clauses
    onZaprosiZapros1(_Source, _MenuTag) :-
        taskWindow::zapros1().
% This code is maintained automatically, do not update it manually.
%  22:53:02-19.12.2017

predicates
    generatedInitialize : ().
clauses
    generatedInitialize() :-
        setText("TestCh07"),
        setDecoration(titlebar([closeButton, maximizeButton, minimizeButton])),
        setBorder(sizeBorder()),
        setState([wsf_ClipSiblings]),
        whenCreated({  :- projectToolbar::create(getVpiWindow()) }),
        addSizeListener({  :- vpiToolbar::resize(getVpiWindow()) }),
        setMdiProperty(mdiProperty),
        menuSet(resMenu(resourceIdentifiers::id_TaskMenu)),
        addShowListener(onShow),
        addSizeListener(onSizeChanged),
        addDestroyListener(onDestroy),
        addMenuItemListener(resourceIdentifiers::id_help_about, onHelpAbout),
        addMenuItemListener(resourceIdentifiers::id_file_exit, onFileExit),
        addMenuItemListener(resourceIdentifiers::id_database_filldatabase, onDatabaseFilldatabase),
        addMenuItemListener(resourceIdentifiers::id_database_listdatabase, onDatabaseListdatabase),
        addMenuItemListener(resourceIdentifiers::id_file_new, onFileNew),
        addMenuItemListener(resourceIdentifiers::id_zaprosi_zapros1, onZaprosiZapros1).
% end of automatic code

end implement taskWindow
