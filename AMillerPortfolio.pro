QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    mainwindow.h

FORMS += \
    mainwindow.ui

TRANSLATIONS += \
    AMillerPortfolio_en_US.ts
CONFIG += lrelease
CONFIG += embed_translations

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    web.qrc

# ============================================================================
# WEBSITE FILES - All portfolio files visible in Qt Creator
# ============================================================================

DISTFILES += \
    # Main HTML pages
    index.html \
    about.html \
    curriculum.html \
    work.html \
    thanks.html \
    # AI & Me project pages
    ai-and-me.html \
    ai-and-me-module.html \
    ai-and-me-project-docs.html \
    # CSS
    styles.css \
    # Images
    portrait.png \
    mandy-work-pic.png \
    mandy-work-pic_bac.jpg \
    # AI & Me project files
    adapt-storyboard.pdf \
    adapt-storyboard-1.jpg \
    adapt-storyboard-2.jpg \
    adapt-storyboard-3.jpg \
    ai-and-me-scorm.zip \
    ai-and-me-project-docs-diagram.pdf \
    curriculum-snippit.pdf \
    # Video
    Student_using_AI.avif \
    # Resources
    web.qrc

# ============================================================================
# LOCAL WEB SERVER - Test changes without committing to GitHub
# ============================================================================

# Start local server on port 8000
serve.commands = cd $$PWD && python3 -m http.server 8000
serve.depends = FORCE
QMAKE_EXTRA_TARGETS += serve

# Start server and open browser
serve_browser.commands = cd $$PWD && (python3 -m http.server 8000 > /dev/null 2>&1 &) && sleep 1 && xdg-open http://localhost:8000
serve_browser.depends = FORCE
QMAKE_EXTRA_TARGETS += serve_browser

# Stop the server
kill_server.commands = pkill -f "python3 -m http.server 8000" || true
QMAKE_EXTRA_TARGETS += kill_server

# ============================================================================
# USAGE:
# ============================================================================
# All files now appear in Qt Creator's project tree
# Files stay open between sessions
# 
# To test locally:
#   1. Click Run button (▶) in Qt Creator
#   2. Open browser to: http://localhost:8000
#   3. Make changes → Save → Refresh browser → See instantly!
#
# To stop server:
#   - Click Stop button (■) in Qt Creator
# ============================================================================
