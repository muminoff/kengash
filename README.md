Рақамли имзога асосланган электрон ҳужжат айланмаси

![alt text](logo.png "Kengash")

# Лойиҳа ҳақида
Электрон ҳужжат айланмасини назорат қилиш, рақамли имзо орқали тасдиқлаш ва верификациялаш тизими

## Талаблар
 * Node.js платформаси
 * GnuPG (GNU Privacy Guard) дастурий таъминоти
 * MongoDB маълумотлар базаси

## Ўрнатиш тартиби
```
 $ git clone https://github.com/muminoff/kengash
 $ cd kengash
 $ npm install
 $ bower install
```

## Ишга тушириш тартиби
MongoDB маълумотлар баъзасида фойдаланувчи яратиш
```
 $ mongo
 { user: "admin",
 pwd: "admin",
      roles: [
      { role: "root", db: "kengash" } | "admin"
      ]
 }

 $ gulp build
 $ gulp serve
```

Тизим маъмурини учун калит яратиш
```
 $ gpg --gen-key --batch key.batch
```

Яратилган калитдан бармоқ изи олиш
```
 $ gpg --no-default-keyring --secret-keyring ./admin.sec --keyring ./admin.pub --list-secret-keys |grep Key
```

## Тизимнинг ишлаш схемаси
### Асосий принциплар
 1. Кенгаш тизим маъмури томонидан таъсис этилади;
 2. Кенгаш аъзоларига тегишли рухсатлар тизим маъмури томонидан белгиланади;
 3. Кенгаш аъзоларининг шахсий калитлари фақат мижоз томонда яратилиши (ва сақланиши) шарт;
 4. Кенгаш аъзоларининг очиқ калитлари серверда сақланиши шарт (рақамли имзоларни верификациялаш учун);
 5. Маълумотлар базасида фақат метамаълумотлар сақланади, электрон хужжатлар эса булутли серверда шифрланган ҳолда сақланиши шарт;
 6. Электрон ҳужжат белгиланган айланма тартибда кенгаш аъзоларининг барчаси
    томонидан имзоланмагунича тасдиқланган деб топилмайди;
 7. Имзоланмаган электрон хужжатларни серверда сақланиш муддатини тизим маъмури
    белгилайди;

## Лицензия
MIT
