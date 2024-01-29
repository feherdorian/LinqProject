## 1. Országokban átlag bajnoki cím
### Sql 
```sql
    SELECT id, orszag, AVG(bajnokiCim) Összeg from csapatok
        group by orszag;
```

### Linq
```cs
    var lek = from csapat in csapatok
            group csapat by csapat.Value.Item4 into cs
            select new
            {
                Orszag = cs.Key,
                Atlag = cs.Average(a => a.Value.Item2)
            };
```

### Lamda
```cs
    var lek = csapatok.GroupBy(cs => cs.Value.Item4)
        .Select(csipcsap => new
        {
            Orszag = csipcsap.Key,
            Atlag = csipcsap.Average(a => a.Value.Item2)
        });
```

## 2. Adott csapat adatai

### Sql
```sql
```

### Linq
```cs
    var lek = from csapat in csapatok
            where csapat.Value.Item1 == Csapat
            select csapat;
```

### Lamda
```cs
     var lek = csapatok.Where(cs => cs.Value.Item1 == Csapat);
```