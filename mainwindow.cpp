#include "mainwindow.h"
#include <QWebEngineView>
#include <QUrl>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
{
    view = new QWebEngineView(this);
    view->setUrl(QUrl("qrc:/index.html"));

    setCentralWidget(view);
    resize(1200, 800);
    setWindowTitle("Amanda Miller | Instructional Designer");
}

MainWindow::~MainWindow() {}
