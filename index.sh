#!/bin/sh

rm -f *.html

if [ ! -d orig ]; then :
  # Can't find original files; get them.
  mkdir orig

  echo "#!/bin/sh" >x.sh
  chmod +x x.sh
  sed -e 's/^\([^=]*=\)\([^ ]*\) .*/curl \1\2 >orig\/\2.html/' <index >>x.sh

  ./x.sh
fi
cp orig/* .

echo "<html><head><title>Wiki Dump</title></head><body>" >x.1
echo "</body></html>" >x.3
for F in *.html; do :
  sed -e '1,/-- start content --/d;s/%3D/=/g;s/<a href="[^:]*:Sford"[^>]*>[^>]*>//g;s/"\/w\/index.php?title=\([^"]*\)"/"\1.html"/g;/-- end content --/,$d' <$F >x.2
  cat x.[123] >$F
done

cat <<__EOF__ >index.html
<html><head><title>Wiki Dump</title></head><body>
<center><h1>Wiki Dump</h1></center>
<p>I used to have a Wikimedia wiki.  But it turns
out I didn't use it very much.  So I captured its
content into html pages.  Many of these pages are
of no use to anybody, including myself, but it's not
worth my time to cull them.  So here they are.</p>

<ul>
__EOF__

sed -e '1,$s/^[^=]*=\([^ ]*\) \(.*\)$/<li><a href="\1.html">\2<\/a>/' <index >>index.html

echo "</ul></body></html>" >>index.html

cat <<__EOF__ >404.html
<html><head><title>404</title></head><body>
<center><h1>404</h1></center>

<p>I've moved my web hosting, and I've had to remove some content.

<p>I've shut down my wiki, but I've dumped its contents
<a href="http://www.geeky-boy.com/w/">here</a>.

<p>You can always go to my <a href="http://www.geeky-boy.com">home page</a>, find my
email address (yes, it is there), and contact me.

</body></html>
__EOF__

rm x.*
