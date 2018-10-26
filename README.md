# Ruby Fundamentals Curriculum
This repo contains all code for the Startup Institute Ruby Fundamentals Curriculum  
Please refer to the full curriculum for more details

### Links to Curriculum
- [Curriculum Overview](https://docs.google.com/document/d/1lkomE-14r6Vssc0rzBSXODYe5Uof_k4tdJvbrkzc3k0)
- [Notes for Teachers](https://docs.google.com/document/d/1CsQveSD9VUVKWvaoRwp4MpFYN-Dimc3UUA6dcV3ihck)
- Weekly Guides
  - [Weekly Guide for Students](https://docs.google.com/document/d/1g1ESo8xczgZJnxBF7ixLMh4bHCob6tpnwKomRktUOEU)
  - [Weekly Guide for Teachers](https://docs.google.com/document/d/1EF5YKMogt9p0CiBYY8e5vFVBvEAxP0UWpMrtZd_M2Ho)

# Repo Contents
- [Weekly Scripts for students](weekly_scripts_student_version)
- [Guides](one_off_guides)
  - Repl.it
  - [Get faster with Hotkeys](one_off_guides/computer_hotkeys.md)
  - [Ruby Syntax List](one_off_guides/syntax_guide.md)
  - [Setting up your local environment](one_off_guides/local_environment_setup.md)
  - [How to use PRY Debugger](one_off_guides/pry_usage.md)
- [Example code](example_code_library)
  - [Open and read a file](example_code_library/open_file)
  - [Parse a CSV file](example_code_library/parse_csv)
  - [Parse a JSON file](example_code_library/parse_json)
  - [Connect to a JSON API](example_code_library/api_connection)




# How to make changes

## Philosophy
### Less is More
Strip everything that isn't strictly necessary to learn the concept.

### Small Wins
Break large exercises into small components.  Provide explicit steps and milestones.

### Don't D.R.Y. the code
Best coding practices usually make code more abstract.  Abstraction is hard follow for new students to follow.  Prefer duplication.

### [5 Whys](https://en.wikipedia.org/wiki/5_Whys)
When a student is confused, drive to the core of the confusion.  The [5 whys technique](https://en.wikipedia.org/wiki/5_Whys) is helpful to identify the core confusions.


## Converting to student versions
1) Copy the [script directory](weekly_scripts) to the [student scripts directory](weekly_scripts_scripts_student_version)  
2) Search and remove all Answers. This is currently done via Sublime regex search: `# Answer(.|\n)*?# /Answer`

![Sublime Search Replace](https://www.evernote.com/shard/s358/sh/86da6f33-9b13-4206-8086-d9d40179e697/7cb290d9d7b1e7c1/res/eb3b32c6-647e-44fb-a9da-8d93e711b04b/skitch.png)

## Wish list
- Script to convert to student versions
- More example code
- More detail in weekly scripts
- One off guides need more detail
