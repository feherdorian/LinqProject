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

### Linq

```cs
  var lek = from csapat in csapatok
          where csapat.bajnokiCim > 20
          select csapat;
```

### Lamda
```cs
  var lek = csapatok.Where(cs => cs.bajnokiCim > 20);
```