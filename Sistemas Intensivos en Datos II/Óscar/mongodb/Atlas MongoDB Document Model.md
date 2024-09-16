# Documents

They are basically json objects optimized to relate data efficiently, the correct term is called bson.

Mongo supports flexible schemas and polymorphic data.

*Documents may contain different fields and fields may contain different types.*

## Using a flexible schema

Initial state of the database:
![[Pasted image 20240913165744.png]]

As the business growth, we needed to store more data, we can add it without problem:
![[Pasted image 20240913165835.png]]

## Documents data types support
So documents have all the characteristics of a json file with the addition of bson structures, which are: dates, numbers and Objects Ids.

**Object ID**: It is used to create unique identifiers, so every document has one, as this works as a primary key. If not specified, mongodb will create one.