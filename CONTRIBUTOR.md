## Are you interested in contributing to this DBT package? 

A small team of analytics engineers at Fivetran develops these DBT packages. However, we highly encourage and welcome contributions! 

We recommend reviewing this [DBT Discourse article](https://discourse.getdbt.com/t/contributing-to-an-external-dbt-package/657) on the best workflow for contributing to a package and then following the steps below:

1. Check to see if an issue already exists for the feature you want to create or bug you’ve encountered. If none exist, please open one [HERE](https://github.com/fivetran/dbt_netsuite/issues). 

2. If it’s a bug fix, please provide the relevant error log or model output. 

3. Fork the dbt package.

4. Clone the repository into a local directory.

5. Install the local version of the package into your dbt project.
   - Checkout a new branch in your project to make sure you don’t commit the code.
   - Run `dbt clean` and `dbt deps`.

6. Make your changes to the package.
   - Update the `CHANGELOG`.
   - Update the `dbt_project.yml` files with the version upgrade, leveraging standard semantic versioning in both the main project and integration tests.

7. Test and validate your changes.
   - Run your dbt project to see if the changes work.
   - Add integration tests if warranted.

8. Open a PR.
   - One of the team members from Fivetran will review and reach out with feedback.


#### Stay in touch!
 We continue to work to improve our packages and would greatly appreciate your [feedback](https://www.surveymonkey.com/r/DQ7K7WW) on the existing dbt package or what you'd like to see next.

 
## Shout out to our rockstar community contributors who have helped shape this DBT package:

- [@ccran](https://github.com/cccran)
- [@mdimercurio](https://github.com/mdimercurio)
- [@AlbertGozzi](https://github.com/AlbertGozzi)
- [@kchiodo](https://github.com/kchiodo) 
- [@kruglikovstepan](https://github.com/kruglikovstepan) 
- [@Norina-Sun](https://github.com/Norina-Sun)
- [@DylanBaker](https://github.com/DylanBaker)
- [@rwang-lyra](https://github.com/rwang-lyra)
- [@clrcrl](https://github.com/clrcrl)
- [@jmongerlyra](https://github.com/jmongerlyra)
- [@atharv6](https://github.com/atharv6)
- [@FrankTub](https://github.com/FrankTub)
- [@jamesrayoub](https://github.com/jamesrayoub)
- [@rpallonie](https://github.com/rpalloni)
- [@phillem15](https://github.com/phillem15)
- [@Yaruis19](https://github.com/Yaruis19)
- [@atharv6](https://github.com/atharv6)
