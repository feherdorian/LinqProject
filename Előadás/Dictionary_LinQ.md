## 1. Országokban átlag bajnoki cím
### Sql 
```sql
    SELECT id, orszag, AVG(bajnokiCim) Összeg from csapatok
        group by orszag;
```

### Linq
```cs

```