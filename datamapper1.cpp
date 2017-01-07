#include "datamapper1.h"
//#include <QDa
struct Mapping {
    QPointer <QObject> object;
    int section;
    QByteArray propertyName;
};

class DataMapper1Private
{
public:
    DataMapper1Private()
        : m_model(0), m_currentIndex(-1)
    {
    }

    // Вспомогательный метод обновления участников по заданным сопоставления с заданными параметрами
    void updateMapping(Mapping &mapping, QObject *object, const int &section, const QByteArray &propertyName);

    // Данный метод устанавливает актуальные сопоставления данных из модели данных в элементы управления
    void update();

    // Модель данных, с которой производится работа
    QAbstractItemModel* m_model;

    // Список сопоставлений, котроые установленны
    QVector<Mapping> m_mappings;

    // Текущий индекс QmlDataMapper
    int m_currentIndex;
};

void DataMapper1Private::updateMapping(Mapping &mapping, QObject *object, const int &section, const QByteArray &propertyName)
{
    mapping.object = object;
    mapping.section = section;

    // Если свойство имени не задано, то по умолчанию используется свойство "text"
    mapping.propertyName = (propertyName.isEmpty() ? "text" : propertyName);
}

void DataMapper1Private::update()
{
    // Список проверок перед обновлением данных
    if (!m_model)
        return;

    if (m_mappings.isEmpty())
        return;

    if (m_currentIndex == -1)
        return;

    // Перебор всех доступных сопоставлений
    foreach (const Mapping &mapping, m_mappings) {
        if (mapping.object) {
            // Обновляем данные элементов управления, устанавливая данные в свойства по роли
            mapping.object->setProperty(mapping.propertyName, m_model->data(m_model->index(m_currentIndex,0), mapping.section));
        }
    }
}

DataMapper1::DataMapper1(QObject *parent)
        : QObject(parent), d(new DataMapper1Private())
{

}

DataMapper1::~DataMapper1()
{
    delete d;
}


void DataMapper1::addMapping(QObject *object, const int &section)
{
    // Добавление сопоставление с свойство по умолчанию
    addMapping(object, section, "text");
}

void DataMapper1::addMapping(QObject *object, const int &section, const QByteArray &propertyName)
{
    // Проверка на то, что добавляемое сопоставление уже существует ...
    for (int i = 0; i < d->m_mappings.count(); ++i) {
        Mapping &mapping = d->m_mappings[i];
        if (mapping.object == object) {
            // ... в случае существования сопоставление, производим обновление данных о секции и свойстве элемента управления ...
            d->updateMapping(mapping, object, section, propertyName);

            // ... и производим обновление содержимого элемента управления
            d->update();
            return;
        }
    }

    // В противном случае добавляем новое сопоставление
    Mapping mapping;
    d->updateMapping(mapping, object, section, propertyName);
    d->m_mappings.append(mapping);

    // ... и производим обновление содержимого элемента управления
    d->update();
}

void DataMapper1::clearMapping()
{
    // Очистка списка сопоставлений
    d->m_mappings.clear();
}

int DataMapper1::currentIndex() const
{
    return d->m_currentIndex;
}

int DataMapper1::count() const
{
    if (!d->m_model)
        return 0;

    // Возвращаем число строк в модели представления данных
    return d->m_model->rowCount();
}

QByteArray DataMapper1::mappedPropertyName(QObject *object) const
{
    foreach(const Mapping &mapping, d->m_mappings) {
        if (mapping.object == object)
        return mapping.propertyName;
    }

    return QByteArray();
}

int DataMapper1::mappedSection(QObject *object) const
{
    foreach(const Mapping &mapping, d->m_mappings) {
        if (mapping.object == object)
        return mapping.section;
    }

    return 0;
}

QObject* DataMapper1::mappedControlAt(const int &section) const
{
    foreach(const Mapping &mapping, d->m_mappings) {
        if (mapping.section == section)
        return mapping.object;
    }

    return 0;
}

QAbstractItemModel* DataMapper1::model() const
{
    return d->m_model;
}

void DataMapper1::removeMapping(QObject *object)
{
    for (int i = 0; i < d->m_mappings.count(); ++i) {
        if (d->m_mappings[i].object == object) {
            d->m_mappings.remove(i);
            return;
        }
    }
}

void DataMapper1::setModel(QAbstractItemModel *model)
{
    d->m_model = model;

    // Установка первоначального индекса содержимого модели представления данных
    d->m_currentIndex = 0;

    // Производим обновление содержимого элемента управления
    d->update();
    emit countChanged();
}

void DataMapper1::revert()
{
    // производим обновление содержимого элемента управления
    d->update();
}

void DataMapper1::setCurrentIndex(int index)
{
    // Проверка на наличие модели данных
    if (!d->m_model)
        return;

    // получаем число строк
    const int rowCount = d->m_model->rowCount();
    // ... игнорируем неверные значения индекса
    if (index < 0 || index >= rowCount)
        return;

    d->m_currentIndex = index;
    d->update();
    emit currentIndexChanged(d->m_currentIndex);
}

void DataMapper1::toFirst()
{
    setCurrentIndex(0);
}

void DataMapper1::toLast()
{
    if (!d->m_model)
        return;

    const int rowCount = d->m_model->rowCount();

    setCurrentIndex(rowCount - 1);
}

void DataMapper1::toNext()
{
    setCurrentIndex(d->m_currentIndex + 1);
}

void DataMapper1::toPrevious()
{
    setCurrentIndex(d->m_currentIndex - 1);
}

void DataMapper1::updateData(int index)
{
    // Устанавливаем требуемый индекс
    d->m_currentIndex = index;

    // и обновляем значения в элементах управления
    d->update();
    emit countChanged();
}
