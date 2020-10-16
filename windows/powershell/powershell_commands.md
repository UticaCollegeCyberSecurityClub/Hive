

# Example #1 – Get the list of available event logs on the local computer
```
Get-EventLog -List
```

# Example #2 – Get System Log on the local computer
```
Get-EventLog -LogName System
```


# Example #3 – Get the most recent 10 entries from System log
```
Get-EventLog -LogName System -Newest 10
```

# Example #4 – Get Error and Warning Entries from local System log on a certain day
```
Get-EventLog -LogName System -After "09/28/2015" -Before "09/29/20115" | Where-Object {$_.EntryType -like 'Error' -or $_.EntryType -like 'Warning'}
```

# Display newest log entries
By using “Newest” parameter we can display newest log entries from the given group. It needs the integer value. For example, to display newest 10 entries; you need to pass 10 as the value to the parameter “Newest“.

```
Get-EventLog -LogName System -Newest 10
```

# Display both Warnings and Errors
Through “EntryType” we can pass multiple values also; and the values should be separated by a comma (“,”). Below command displays both Warnings and Errors:

```
Get-EventLog -LogName Application -EntryType "Error", "Warning"
```

