#!/bin/sh

if [ ! -f Admin_tips.html ]; then :
  curl http://wiki.geeky-boy.com/w/index.php?title=Admin_tips >Admin_tips.html
  curl http://wiki.geeky-boy.com/w/index.php?title=CHIP_LED_Nosolder >CHIP_LED_Nosolder.html
  curl http://wiki.geeky-boy.com/w/index.php?title=CHIP_Proj1 >CHIP_Proj1.html
  curl http://wiki.geeky-boy.com/w/index.php?title=CHIP_do_once >CHIP_do_once.html
  curl http://wiki.geeky-boy.com/w/index.php?title=CHIP_lessons >CHIP_lessons.html
  curl http://wiki.geeky-boy.com/w/index.php?title=CHIP_startup >CHIP_startup.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Charlene_PI >Charlene_PI.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Github_tips >Github_tips.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Internal_error_handling >Internal_error_handling.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Java_stuff_I_always_forget >Java_stuff_I_always_forget.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Long_emails >Long_emails.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Main_Page >Main_Page.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Perl_for_C_Programmers >Perl_for_C_Programmers.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Selling_Celestar_8 >Selling_Celestar_8.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Sford_Basic_tutorial >Sford_Basic_tutorial.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Sford_Basic_tutorial_1 >Sford_Basic_tutorial_1.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Sford_Basic_tutorial_2 >Sford_Basic_tutorial_2.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Sford_Basic_tutorial_3 >Sford_Basic_tutorial_3.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Sford_Basic_tutorial_4 >Sford_Basic_tutorial_4.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Sford_Blog_Tags >Sford_Blog_Tags.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Sford_CC0 >Sford_CC0.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Sford_Content_Outlets >Sford_Content_Outlets.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Sford_LinkedIn_endorsements >Sford_LinkedIn_endorsements.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Sford_Semi-literate_documentation >Sford_Semi-literate_documentation.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Sford_astronomy >Sford_astronomy.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Sford_bookmarks >Sford_bookmarks.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Sford_cheat_sheets >Sford_cheat_sheets.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Sford_coding_test >Sford_coding_test.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Sford_dbx_commands >Sford_dbx_commands.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Sford_fun >Sford_fun.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Sford_index%3D1_story >Sford_index%3D1_story.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Sford_password_strength >Sford_password_strength.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Sford_personal_history >Sford_personal_history.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Sford_quotes >Sford_quotes.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Sford_semlit_Knuth >Sford_semlit_Knuth.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Sford_sympathy >Sford_sympathy.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Sford_vi_tutorial >Sford_vi_tutorial.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Sford_why_not_literate >Sford_why_not_literate.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Sford_wiki >Sford_wiki.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Sford_wiki_setup >Sford_wiki_setup.html
  curl http://wiki.geeky-boy.com/w/index.php?title=Ubuntu_on_Mac >Ubuntu_on_Mac.html
fi

echo "<html><body>" >x.1
echo "</body></html>" >x.3
for F in *.html; do :
  sed -e '1,/-- start content --/d;/-- end content --/,$d' <$F >x.2
  cat x.[123] >$F
done
