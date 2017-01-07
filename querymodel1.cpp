#include "querymodel1.h"
#include <QDebug>
#include "database.h"

QueryModel1::QueryModel1(QObject *parent) : QSqlQueryModel(parent)
{
    this->updateModel();
}
/* Получение данных из модели */
QVariant QueryModel1::data(const QModelIndex & index, int role) const
{
    int columnId = role - Qt::UserRole - 1;
    QModelIndex modelIndex = this->index(index.row(), columnId);
    return  QSqlQueryModel::data(modelIndex, Qt::DisplayRole);
}
/* Получение имен ролей */
QHash<int, QByteArray> QueryModel1::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles[IdRole] = "id";
    roles[IdentifikatorRole] = "Identifikator";
    roles[CehRole] = "Ceh";
    return roles;
}
/* Обновление таблицы в модели представления данных */
void QueryModel1::updateModel()
{
    this->setQuery("SELECT id, " BAZAOBORUDOVANIA_IDENTIFIKATOR ", " BAZAOBORUDOVANIA_CEH " FROM " BAZAOBORUDOVANIA);
}
/* Получение id строки в модели представления данных */
int QueryModel1::getId(int row)
{    
    return this->data(this->index(row, 0), IdRole).toInt();    
}
