#ifndef QUERYMODEL1_H
#define QUERYMODEL1_H

#include <QObject>
#include <QSqlQueryModel>

class QueryModel1 : public QSqlQueryModel
{
    Q_OBJECT
public:
    enum Roles
    {
        IdRole = Qt::UserRole + 1,
        IdentifikatorRole,
        CehRole
    };
    explicit QueryModel1(QObject *parent = 0);
    QVariant data(const QModelIndex & index, int role = Qt::DisplayRole) const;
protected:
    QHash<int, QByteArray> roleNames() const;

signals:

public slots:
    void updateModel();
    int getId(int row);
};

#endif // QUERYMODEL1_H
