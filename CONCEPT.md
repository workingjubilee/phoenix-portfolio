Feature layout:

0) "It's me!" page.
1) Explainer pages
2) Actual portfolio page
3) Live chat with Jubilee using (sockets + Phoenix Live View?)
    For chat: don't rip off Sophie DeBenedetto's code entirely
    but do reference it

blog + a single chat function is conceptually well-suited for templating

not a whole lot of interactivity
no need to go wild and use React
can get some EXP handling an Elixir server too


explainer template:
 minimalistic
 text-focused
 some imagery

obvious explainers:
  Elixir for people who haven't done Ruby before, hah
  How to AWS (for Pythonistas)
  How to PostgreSQL
    on Heroku
    on AWS
    SQLite -> PostgreSQL data transfer
      both ETL and "leveling up"
    advanced PostgreSQL usage
  the Blind Monk explanation of interpreters
  what do I know about devops that is worth sharing?

also desired:
  the ability to embed a Python game into the browser
  make all projects interactable-with right then and there
  options: WASM, or using ErlPort + a pool manager