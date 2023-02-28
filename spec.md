# Index Spec

The following is a spec for a commandline tool that constructs an index with input data and supports querying it in O(log n) time.

## Acceptance Criteria

As commandline user with a collection of IDs and their associated emails, I'd like to:
- input the emails line by line.
- search for an email by ID.
- print a list of the emails ordered by ID.
- print the tree representation of the index.

## Implementation Details

### Index Data Structure

A binary tree will need to be implemented that supports
- Search:
	- Inputs
		- integer ID
		- Index Pointer
	- Effects
	  - Sets index pointer to an index if one is found.
  - Outputs
	  - Found
		- Not found
- Insertion
  - Inputs
	  - Index Pointer
		- ID and address pair
	- Effects
	  - If search returns a not found, insert the value into the appropriate leaf node.
	- Outputs
	  - Insert success
		- ID already exists
- Print

### CLI

A commandline interface should be built that supports the following interactions:

Running the executable opens a repl.

Supports exiting
```
$ ./exe
> exit
```
Supports insertion and search.
```
$ ./exe
> insert 1 dev.evanpiro@gmail.com
Success
> select 1
1 dev.evanpiro@gmail.com
```
Supports querying multiple items
```
> insert 1 glibby@hotmail.com
Success
> insert 2 dev.evanpiro@gmail.com
Success
> select *
1 glibby@hotmail.com
2 dev.evanpiro@gmail.com
```

