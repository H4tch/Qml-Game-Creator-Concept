#include <QApplication>
#include "qmlapplicationviewer.h"

Q_DECL_EXPORT int main(int argc, char *argv[])
{
	QScopedPointer<QApplication> app(createApplication(argc, argv));
	QmlApplicationViewer viewer;

	viewer.setWindowTitle("Game Creator");
    //viewer.setWindowFlags();
    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationAuto);
	viewer.setMainQmlFile(QLatin1String("qml/main.qml"));
	viewer.showExpanded();

	return app->exec();
}
