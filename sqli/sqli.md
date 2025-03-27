## SQL Injection

`from portswigger web academy`
- SQL injection (SQLi) is a web security vulnerability that allows an attacker to interfere with the queries that an application makes to its database. This can allow an attacker to view data that they are not normally able to retrieve. This might include data that belongs to other users, or any other data that the application can access. In many cases, an attacker can modify or delete this data, causing persistent changes to the application's content or behavior.

---

Here are steps to test the vulnerability:

### How to detect SQL injection vulnerabilities

- reference: https://portswigger.net/web-security/sql-injection#how-to-detect-sql-injection-vulnerabilities
- code snippet used: `./detect-sqli.py`. To run it change the url inside the code and do:

```bash
python detect-sqli.py
```

If this doesn't work, try the following.

### Automated tools

- reference: https://github.com/swisskyrepo/PayloadsAllTheThings/tree/master/SQL%20Injection#tools
- gharui tool: https://github.com/r0oth3x49/ghauri
- sqlmap: https://github.com/sqlmapproject/sqlmap/wiki/Usage

> [!TIP]
> Read the code for the scripts to run them first. When you decide to run the .sh scripts do `./name-of-script`
