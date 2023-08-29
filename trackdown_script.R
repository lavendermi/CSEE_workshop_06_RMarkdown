library(trackdown)
# Presumably we have one file that we want to share editing on (the manuscript).
# Let's set a file name variable so that we can just us it along with all of the
# options to upload, update etc. We need to include the path.

manuscript_name <- "./manuscript_template/manuscript/manuscript_template_final.Rmd"

# Uploads a local file to Google Drive as a plain text document. Will only
# upload the file if it doesn't already exist in the chosen location. By default
# files are uploaded to the folder "trackdown", if it does not exist on Google
# Drive, then permission to create it is requested.
trackdown::upload_file(file = manuscript_name, hide_code = TRUE)


# Download edited version of a file from Google Drive updating the local version
# with the new changes.
trackdown::download_file(file = manuscript_name)

# Replaces the content of an existing file in Google Drive with the contents of
# a local file. Use with caution as tracked changes in the Google Drive file
# will be lost!
trackdown::update_file(file = manuscript_name, hide_code = TRUE)


# Render file from Google Drive if there have been edits. NOTE: There is a bug
# somewhere in trackdown. It looks like it removes the file extension when it
# uploads to Google Drive so when you run this it does not find the file. You
# can either manually specify the file name without the extension... or just
# use download and manually render the document.
trackdown::render_file(file = manuscript_name, gfile = "manuscript_template_final")
