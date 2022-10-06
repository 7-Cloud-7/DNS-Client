$TTL    3600
@       IN      SOA     ns.clouddomain.com. igonzalezvila.danielcastelao.org. (
                   2007010401           ; Serial
                         3600           ; Refresh [1h]
                          600           ; Retry   [10m]
                        86400           ; Expire  [1d]
                          600 )         ; Negative Cache TTL [1h]
;
@       IN      NS      ns.clouddomain.com.
@       IN      MX      10 serveremail.clouddomain.org.

ns     IN       A       10.1.0.254
etch    IN      A       10.1.0.2

pop     IN      CNAME   ns
www     IN      CNAME   etch
mail    IN      CNAME   etch
