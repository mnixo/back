# back
A simple bash script to make backwards navigation in the unix shell as simple as it should be.

## Motivation

Tired of this?
```
~/this/is/a/very/long/example/path> cd ..
~/this/is/a/very/long/example> cd ..
~/this/is/a/very/long> cd ..
~/this/is/a> cd ..
~/this/is> cd ..
~/this>
```

And/or this?
```
~/this/is/a/very/long/example/path> cd ../../../../..
~/this>
```

## Usage

Using `back` with no arguments behaves just like the standard `cd ..`:
```
~/this/is/a/very/long/example/path> back
~/this/is/a/very/long/example> back
~/this/is/a/very/long>
```

Go back faster using a positive integer argument:
```
~/this/is/a/very/long/example/path> back 4
~/this/is/a> back 2
~/this>
```

Or even by specifying the target directory in the current working directory path:
```
~/this/is/a/very/long/example/path> back a
~/this/is/a> back this
~/this>
```

## Installation

- In the terminal, make the script executable:
  
  `chmod +x /path/to/back.sh`

- In the file where you would normally set your aliases (ex: .bashrc), source the script file by adding the following line:
  
  `source /path/to/back.sh`

- Source the changed file in the terminal:
  
  `source .bashrc`

