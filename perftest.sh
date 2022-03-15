host="fabmedical-562466.documents.azure.com"
username="fabmedical-562466"
password="amWDba6lKVl3nRNXi5vNk4dhDUqSaYbfvSs4RSjeHAQfyoVA0Hw9AAbku6o2gPMVKBkEIyde9aWaUUlXLRo6UA=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done