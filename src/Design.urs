type dpage = Page.dpage

val with_menu : ((css_class -> transaction unit) -> transaction dpage) -> transaction dpage
