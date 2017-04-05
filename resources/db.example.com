$TTL    604800
@       IN      SOA     ns1.example.com. root.localhost. (
             1     	; Serial
             604800     ; Refresh
              86400     ; Retry
            2419200     ; Expire
             604800 )   ; Negative Cache TTL
;
; name servers - NS records
     IN      NS      ns1.example.com.

; name servers - A records
host1.example.com.       IN      A       192.168.1.1
ns1.example.com.	IN	A	127.0.0.1
