# C4D-Exceptions - Control exceptions in your systems quickly, easily and centrally

With C4D-Exceptions you can control exceptions in your systems quickly, easily and centrally


## ⚙️ Installation

* Installation using the [**TMS Smart Setup**](https://doc.tmssoftware.com/smartsetup/download/index.html):

```
tms install c4d.exceptions
```

> [!TIP]
> The c4d.exceptions file is located on the Community server, which is disabled by default. On a machine where it hasn't been enabled yet, run the following first: `tms server-enable community`
>

<br>

* **Manual installation**: Open your Delphi and add the following folder to your project, under *Project > Options > Building > Delphi Compiler > Search path*

```delphi
C4D-Exceptions\Src
```



## 🚀 Quickstart
* Add uses to your system:
```delphi
uses
  C4D.Exceptions;
```

#### When generating exceptions, enter one of the following options::

* Information exception:  
```delphi
 raise ExceptionMsg.Create('My message', 'More details (optional)');
```

* Warning exception:
```delphi
raise ExceptionWarning.Create('My message', 'More details (optional)');
```

* Error exception:
```delphi
raise ExceptionError.Create('My message', 'More details (optional)');
```

* Permission exception:
```delphi
raise ExceptionPermission.Create('My message', 'More details (optional)');
```

* Obligatory exception:
```delphi
raise ExceptionObligatory.Create('My message (optional)', Edit1);
```

* Empty exception:
```delphi
raise ExceptionEmpty.Create('My message', 'More details (optional)');
```

### Exception default
* If the standard exception is reported (raise Exception.Create('Error Message');) the exception that will be displayed will be the Error exception (ExceptionError)

<br>

## 🗑️ Uninstallation

`c4d.exceptions` depends on [`c4d.msg`](https://github.com/Code4Delphi/C4D-Msg), which is installed automatically together with it.

* Uninstall both, listing them explicitly:

```
tms uninstall c4d.exceptions c4d.msg
```

* Uninstall `c4d.exceptions` and take its dependencies (`c4d.msg`) along:

```
tms uninstall c4d.exceptions -cascade
```

* Uninstall only `c4d.exceptions` and keep `c4d.msg` installed:

```
tms uninstall c4d.exceptions
```

* Uninstall only `c4d.msg` and keep `c4d.exceptions` installed, using `-force`:

```
tms uninstall c4d.msg -force
```

> [!WARNING]
> Without `-force`, Smart Setup refuses to remove `c4d.msg` while `c4d.exceptions` is installed. With `-force`, `c4d.exceptions` is left without its dependency and will not build until `c4d.msg` is installed again.

<br>

## ⌨️ Demo
* Next to the project sources, you will find a test project, in the folder:
```
C4D-Exceptions\Samples\Demo01
```


‌
# 💬 Contributions / Ideas / Bug Fixes
To submit a pull request, follow these steps:

1. Fork the project
2. Create a new branch (`git checkout -b minha-nova-funcionalidade`)
3. Make your changes
4. Make the commit (`git commit -am 'Functionality or adjustment message'`)
5. Push the branch (`git push origin Message about functionality or adjustment`)
6. Open a pull request


## 📞 Contatos
[![Course](https://img.shields.io/badge/Course-Delphi-F00?logo=delphi)](https://code4delphi.github.io/ia-devs-delphi-lazarus/)
[![Telegram](https://img.shields.io/badge/Telegram-Join-blue?logo=telegram)](https://t.me/Code4Delphi)
[![YouTube](https://img.shields.io/badge/YouTube-Join-red?logo=youtube&logoColor=red)](https://www.youtube.com/@code4delphi)
[![Instagram](https://img.shields.io/badge/Intagram-Follow-red?logo=instagram&logoColor=pink)](https://www.instagram.com/code4delphi/)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue)](https://www.linkedin.com/in/cesar-cardoso-dev)
[![Blog](https://img.shields.io/badge/Blog-Code4Delphi-F00?logo=delphi)](https://code4delphi.com.br/blog/)
[![E-mail](https://img.shields.io/badge/E--mail-Send-yellowgreen?logo=maildotru&logoColor=yellowgreen)](mailto:contato@code4delphi.com.br)

---

<p align="center">
  <a href="https://github.com/Code4Delphi/Code4D-Wizard/blob/master/Images/C4D-Logo.png">
    <img alt="Code4Delphi" height="100" src="https://github.com/Code4Delphi/Code4D-Wizard/blob/master/Images/c4d-logo-100x100.png">
  </a> 
</p>
