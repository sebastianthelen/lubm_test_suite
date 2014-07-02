#!/bin/bash

#  run_test_suite.sh
#  
#
#  Created by Sebastian Thelen on 13/06/14.
#

rm -rf results/lubm1000
mkdir results/lubm1000

query[0]='DEFINE input:same-as "yes" DEFINE input:inference "lubm_rule_set" PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> PREFIX ub: <http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#> SELECT DISTINCT ?X WHERE {?X rdf:type ub:GraduateStudent . ?X ub:takesCourse <http://www.Department0.University0.edu/GraduateCourse0>} ORDER BY DESC(?X)'
query[1]='DEFINE input:same-as "yes" DEFINE input:inference "lubm_rule_set" PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> PREFIX ub: <http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#> SELECT DISTINCT ?X ?Y ?Z WHERE {?X rdf:type ub:GraduateStudent . ?Y rdf:type ub:University . ?Z rdf:type ub:Department . ?X ub:memberOf ?Z . ?Z ub:subOrganizationOf ?Y . ?X ub:undergraduateDegreeFrom ?Y} ORDER BY DESC(?X) DESC(?Y) DESC(?Z)'
query[2]='DEFINE input:same-as "yes" DEFINE input:inference "lubm_rule_set" PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> PREFIX ub: <http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#> SELECT DISTINCT ?X WHERE {?X rdf:type ub:Publication . ?X ub:publicationAuthor <http://www.Department0.University0.edu/AssistantProfessor0>} ORDER BY DESC(?X)'
query[3]='DEFINE input:same-as "yes" DEFINE input:inference "lubm_rule_set" PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> PREFIX ub: <http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#> SELECT DISTINCT ?X ?Y1 ?Y2 ?Y3 WHERE {?X rdf:type ub:Professor . ?X ub:worksFor <http://www.Department0.University0.edu> . ?X ub:name ?Y1 . ?X ub:emailAddress ?Y2 .?X ub:telephone ?Y3} ORDER BY DESC(?X) DESC(?Y1) DESC(?Y2) DESC(?Y3)'
query[4]='DEFINE input:same-as "yes" DEFINE input:inference "lubm_rule_set" PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> PREFIX ub: <http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#> SELECT DISTINCT ?X WHERE {?X rdf:type ub:Person . ?X ub:memberOf <http://www.Department0.University0.edu>} ORDER BY DESC(?X)'
query[5]='DEFINE input:same-as "yes" DEFINE input:inference "lubm_rule_set" PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> PREFIX ub: <http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#> SELECT DISTINCT ?X WHERE {?X rdf:type ub:Student} ORDER BY DESC(?X)'
query[6]='DEFINE input:same-as "yes" DEFINE input:inference "lubm_rule_set" PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> PREFIX ub: <http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#> SELECT DISTINCT ?X ?Y WHERE {?X rdf:type ub:Student . ?Y rdf:type ub:Course . ?X ub:takesCourse ?Y . <http://www.Department0.University0.edu/AssociateProfessor0> ub:teacherOf ?Y} ORDER BY DESC(?X) DESC(?Y)'
query[7]='DEFINE input:same-as "yes" DEFINE input:inference "lubm_rule_set" PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> PREFIX ub: <http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#> SELECT DISTINCT ?X ?Y ?Z WHERE {?X rdf:type ub:Student . ?Y rdf:type ub:Department . ?X ub:memberOf ?Y . ?Y ub:subOrganizationOf <http://www.University0.edu> . ?X ub:emailAddress ?Z} ORDER BY DESC(?X) DESC(?Y) DESC(?Z)'
query[8]='DEFINE input:same-as "yes" DEFINE input:inference "lubm_rule_set" PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> PREFIX ub: <http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#> SELECT DISTINCT ?X ?Y ?Z WHERE {?X rdf:type ub:Student . ?Y rdf:type ub:Faculty . ?Z rdf:type ub:Course . ?X ub:advisor ?Y . ?Y ub:teacherOf ?Z . ?X ub:takesCourse ?Z} ORDER BY DESC(?X) DESC(?Y) DESC(?Z)'
query[9]='DEFINE input:same-as "yes" DEFINE input:inference "lubm_rule_set" PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> PREFIX ub: <http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#> SELECT DISTINCT ?X WHERE {?X rdf:type ub:Student . ?X ub:takesCourse <http://www.Department0.University0.edu/GraduateCourse0>} ORDER BY DESC(?X)'
query[10]='DEFINE input:same-as "yes" DEFINE input:inference "lubm_rule_set" PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> PREFIX ub: <http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#> SELECT DISTINCT ?X WHERE {?X rdf:type ub:ResearchGroup . ?X ub:subOrganizationOf <http://www.University0.edu>} ORDER BY DESC(?X)'
query[11]='DEFINE input:same-as "yes" DEFINE input:inference "lubm_rule_set" PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> PREFIX ub: <http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#> SELECT DISTINCT ?X ?Y WHERE {?X rdf:type ub:Chair . ?Y rdf:type ub:Department . ?X ub:worksFor ?Y . ?Y ub:subOrganizationOf <http://www.University0.edu>} ORDER BY DESC(?X) DESC(?Y)'
query[12]='DEFINE input:same-as "yes" DEFINE input:inference "lubm_rule_set" PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> PREFIX ub: <http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#> SELECT DISTINCT ?X WHERE {?X rdf:type ub:Person . <http://www.University0.edu> ub:hasAlumnus ?X} ORDER BY DESC(?X)'
query[13]='DEFINE input:same-as "yes" DEFINE input:inference "lubm_rule_set" PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> PREFIX ub: <http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#> SELECT DISTINCT ?X WHERE {?X rdf:type ub:UndergraduateStudent} ORDER BY DESC(?X)'

#for j in 0 1 2
#do
#	for i in 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
#	do
#	time (curl -G --silent --max-time '300' --header "Accept: application/sparql-results+xml" 'http://abel:8890/sparql' --data-urlencode 'query='"${query[$i]}"'' > results/lubm1000/sparql$i-$j.xml) 2>>results/timing_lubm1000_$j.log
#	xsltproc -o results/lubm1000/result$i-$j.xml ../extract_bindings.xslt results/lubm1000/sparql$i-$j.xml;
	done
#done

for j in 0 1 2 3 4
do
	for i in 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13
	do
	printf "%d,%d," "$j" "$i" >> results/lubm1000/log.csv
	t=$((/usr/bin/time -f'%e' curl -G --silent --max-time '300' --header "Accept: application/sparql-results+xml" 'http://abel:8890/sparql' --data-urlencode 'query='"${query[$i]}"'' > results/lubm1000/sparql$i-$j.xml) 2>&1)
	printf "%s," "$t" >> results/lubm1000/log.csv
	xsltproc ../extract_bindings.xslt results/lubm1000/sparql$i-$j.xml >> results/lubm1000/log.csv;
	printf "\n" >> results/lubm1000/log.csv
	done
done

