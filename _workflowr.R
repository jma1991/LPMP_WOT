# Step 1: Commit analysis files

system("git add analysis/about.Rmd")
system("git add analysis/index.Rmd")
system("git add analysis/license.Rmd")
system("git add analysis/divergence-analysis.Rmd")
system("git commit -m 'Build'")

# Step 2: Build HTML files

wflow_build("analysis/about.Rmd")
wflow_build("analysis/index.Rmd")
wflow_build("analysis/license.Rmd")
wflow_build("analysis/divergence-analysis.Rmd")

# Step 3: Commit HTML files

system("git add docs/about.html")
system("git add docs/index.html")
system("git add docs/license.html")
system("git add docs/divergence-analysis.html")
system("git add docs/figure/divergence-analysis.Rmd")
system("git add docs/site_libs")
system("git add docs/.nojekyll")
system("git commit -m 'Build'")
system("git push origin main")
