$TTL    604800
@       IN      SOA     ns1.example.com. root.localhost. (
             050417     ; Serial
             604800     ; Refresh
              86400     ; Retry
            2419200     ; Expire
             604800 )   ; Negative Cache TTL
;
; name servers - NS records
     IN      NS      ns1.example.com.

; name servers - A records
ns1.bhp.org.bw.                 IN      A       192.168.1.2
