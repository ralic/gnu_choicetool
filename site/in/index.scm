(h3 "DESCRIPTION")
(p "Choicetool is a configuration management tool like "
   (a (@ (href "http://www.catb.org/~esr/cml2/cml2-reference.html")) "CML2")
   " or "
   (a (@ (href "http://kernel.org/doc/#kconfig")) "Linux kernel kconfig")
   "."
   (br)
   "It uses an input description in order to know the configuration "
   "symbols and their inter-relations and creates an outputs a script "
   "that should be shipped with a package, in order to let the user tweak "
   "the configuration parameters interactively."
   (br)
   "Choicetool should work with (and even without) the "
   (a (@ (href "http://en.wikipedia.org/wiki/Autotools")) autotools)
   ".")
(h4 "Use")
(p "The complete input " (a (@ (href "./grammar.html")) "grammar") " "
   "is available.")

(h3 "COPYING")
(p "The project is licensed under the "
   (a (@ (href "http://www.gnu.org/licenses/licenses.html"))
      "GNU General Public License, version 2"))

(h3 "MAINTAINERS")
(p "Francesco Salvestrini <salvestrini AT gmail DOT com>")

(h3 "AUTHORS")
(p "Francesco Salvestrini <salvestrini AT gmail DOT com>"
   (br)
   "Alessandro Massignan <ff0000 DOT it AT gmail DOT com>")

(h3 "RELEASES")
(p "Sorry, no public release available at the moment.")

(h3 "MAILING LISTS")
(p "The project has a single moderated mailing list, with an archive. "
   "In order to post a message to the mailing list you must be subscribed. "
   "Please consult the "
   (a (@ (href "http://lists.nongnu.org/mailman/listinfo/choicetool-generic"))
      "mailing list page")
   " for more information on subscribing to the mailing list.")

(h3 "REPORT A BUG")
(p "If you think you have found a bug then please send as complete a report "
   "as possible to "
   "<choicetool-generic AT nongnu DOT org>. "
   "An easy way to collect all the required information, such as platform and "
   "compiler, is to include in your report the config.log file available at "
   "the end of the configuration procedure. "
   (br)
   (br)
   "If you have a patch for a bug that hasn't yet been fixed in "
   "the latest repository sources, please be so kind to create it using the "
   "repository sources, not the release sources.")

(h3 "DEVELOPMENT")
(h4 "Browsing sources")
(p "You can browse the "
   (a (@ (href "http://git.savannah.nongnu.org/gitweb/?p=choicetool.git"))
      "Git repository")
   " of this project with your web browser. This gives you a good "
   "picture of the current status of the source files. You may also view "
   "the complete histories of any file in the repository as well as "
   "differences among two versions.")

(h4 "Getting a copy of the Git Repository")
(p "Anonymous checkout: "
   (br)
   (br)
   (kbd (a (@ (href "http://savannah.gnu.org/maintenance/UsingGit")) "git")
	" clone git://git.savannah.nongnu.org/choicetool.git"))

(h4 "Contribute")
(p "If you have time and programming skills, you can help us by developing "
   "missing features, regression tests or bug-fixing the present codebase. "
   "Subscribe to the "
   (a (@ (href "http://lists.nongnu.org/mailman/listinfo/choicetool-generic"))
      "mailing list")
   ", drop us a mail and start coding. Send your code to the "
   "mailing list under the form of patches for the current revision system."
   (br)
   (br)
   "If you have time but no programming skills, you can help with "
   "documentation,  packaging, tests before releases etc ...")
