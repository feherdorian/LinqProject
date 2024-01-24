## 1. Csapatok névsorban
### Sql
```sql
  SELECT *from csapatok
    order by  csapat;
```

### Linq
```cs
 var lek = from csapat in csapatok
           orderby csapat.csapat
           select csapat;
```

### Lamda
```cs
var lek = csapatok.OrderBy(cs => cs.csapat);
```

## 2. 20 vagy több bajnoki címmel rendelkező csapatok
### Sql
```sql
  SELECT id, csapat, bajnokiCim from csapatok
    where bajnokiCim > 20;
```