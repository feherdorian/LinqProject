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

## 2. Országonként hány csapat van

### Sql 

```sql
  select id, orszag ,Count(*) Letszam  from csapatok
    group by orszag ;
```

### Linq
```cs
  var lek = from cs in csapatok
    group cs by cs.orszag into groupedCsapatok
        select new
          {
            Orszag = groupedCsapatok.Key,
            Letszam = groupedCsapatok.Count(),
          };
```

### Lamda
```cs
  var lek = csapatok
      .GroupBy(cs => cs.orszag)
      .Select(groupedCsapatok => new
      {
          Orszag = groupedCsapatok.Key,
          Letszam = groupedCsapatok.Count()
      });
```


## 3. Első három legtöbb címmel rendelkező csapat

### Sql
```sql
  SELECT csapat, bajnokiCim from csapatok
      order BY bajnokiCim DESC
      Limit 3;
```

### Linq
```cs
  var lek = (from csapat in csapatok
            orderby csapat.bajnokiCim descending
            select csapat).Take(3);
```

### Lamda
```cs
  var lek = csapatok.OrderByDescending(cs => cs.bajnokiCim).
      Take(3);
```