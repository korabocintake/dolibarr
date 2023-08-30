# SVELTECLIENTIF FOR [DOLIBARR ERP CRM](https://www.dolibarr.org)

## Features

Description of the module...

<!--
![Screenshot svelteclientif](img/screenshot_svelteclientif.png?raw=true "SvelteClientIf"){imgmd}
-->

Other external modules are available on [Dolistore.com](https://www.dolistore.com).

## Translations

Translations can be completed manually by editing files into directories _langs_.

<!--
This module contains also a sample configuration for Transifex, under the hidden directory [.tx](.tx), so it is possible to manage translation using this service.

For more informations, see the [translator's documentation](https://wiki.dolibarr.org/index.php/Translator_documentation).

There is a [Transifex project](https://transifex.com/projects/p/dolibarr-module-template) for this module.
-->

<!--

## Installation

### From the ZIP file and GUI interface

If the module is a ready to deploy zip file, so with a name module_xxx-version.zip (like when downloading it from a market place like [Dolistore](https://www.dolistore.com)),
go into menu ```Home - Setup - Modules - Deploy external module``` and upload the zip file.

Note: If this screen tell you that there is no "custom" directory, check that your setup is correct:

- In your Dolibarr installation directory, edit the ```htdocs/conf/conf.php``` file and check that following lines are not commented:

    ```php
    //$dolibarr_main_url_root_alt ...
    //$dolibarr_main_document_root_alt ...
    ```

- Uncomment them if necessary (delete the leading ```//```) and assign a sensible value according to your Dolibarr installation

    For example :

    - UNIX:
        ```php
        $dolibarr_main_url_root_alt = '/custom';
        $dolibarr_main_document_root_alt = '/var/www/Dolibarr/htdocs/custom';
        ```

    - Windows:
        ```php
        $dolibarr_main_url_root_alt = '/custom';
        $dolibarr_main_document_root_alt = 'C:/My Web Sites/Dolibarr/htdocs/custom';
        ```

### From a GIT repository

Clone the repository in ```$dolibarr_main_document_root_alt/svelteclientif```

```sh
cd ....../custom
git clone git@github.com:gitlogin/svelteclientif.git svelteclientif
```

### <a name="final_steps"></a>Final steps

From your browser:

  - Log into Dolibarr as a super-administrator
  - Go to "Setup" -> "Modules"
  - You should now be able to find and enable the module

-->

## Licenses

### Main code

GPLv3 or (at your option) any later version. See file COPYING for more information.

### Documentation

All texts and readmes are licensed under GFDL.

### Develop

user テーブルの APIkey は、Encode されているので、そのままでは使用不可 
以下の GET で、Key を取得できる。(passwordは、URLencoded) 
https://crnt-dolibarr-url/api/index.php/login?login=doliadmin&password=doli123%23 
URLの最後に、「&reset=1」で、Keyをリセットする。 

```xml
<response>
    <success>
    <code>200</code>
    <token>a7c22c7593deb2a9983d806449a11d16b1c9c28a</token>
    <entity>0</entity>
    <message>Welcome doliadmin - This is your token (recorded for your user). You can use it to make any REST API call, or enter it into the DOLAPIKEY field to use the Dolibarr API explorer.</message>
    </success>
</response>
```
