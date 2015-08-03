## dstat monitor plotting script

```
Usage: dstat_plot.rb [options] -c CATEGORY -f FIELD directory | file1 file2 ...
    -v, --verbose                    Output more information
    -i, --inverted                   Invert the graph
    -n, --no-key                     No plot key is printed
    -d, --dry                        Dry run. Plot is not saved as file but displayed with gnuplot
    -c, --category CATEGORY          Select the category
    -f, --field FIELD                Select the field
    -h, --help                       Display this screen
```

(-c CATEGORY and -f FIELD are mandatory parameters)

## Example

```
ruby dstat_plot.rb -c "total cpu usage" -f "usr" tpch-10_flink-nativ_2015_07_23_14_48/
```

N is the cpu core index for 0..n cores

Categoriy | Field
----------|------
epoch | epoch
memory usage | used
 | buff
 | cach
 | free
swap | used
 |free
system | int
 |csv
paging | in
 |out
total cpu usage | usr
 | sys
 | idl
 | wai
 | hiq
 | siq
cpuN usage | usr
 | sys
 | idl
 | wai
 | hiq
 | siq
net/total | recv
 | send
net/eth0 | recv
 | send
dsk/total | read
 | writ
dsk/sda | read
 | writ
io/total | read
 | writ
io/sda | read
 | writ
