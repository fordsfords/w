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

echo "<html><body>" >x.1
echo "</body></html>" >x.3
for F in *.html; do :
  sed -e '1,/-- start content --/d;s/"\/w\/index.php?title=\([^"]*\)"/"\1.html"/;/-- end content --/,$d' <$F >x.2
  cat x.[123] >$F
done

cat <<__EOF__ >index.html
<html><body>
<p>I used to have a Wikimedia wiki.  But it turns
out I didn't use it very much.  So I captured its
content into html pages.  Many of these pages are
of no use to anybody, including myself, but it's not
worth my time to cull them.  So here they are.</p>

<ul>
__EOF__

sed -e '1,$s/^[^=]*=\([^ ]*\) \(.*\)$/<li><a href="\1.html">\2<\/a>/' <index >>index.html

echo "</ul></body></html>" >>index.html

rm x.*
