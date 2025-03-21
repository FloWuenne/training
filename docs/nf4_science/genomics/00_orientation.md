# Orientation

The training environment contains all the software, code and data necessary to work through this training course, so you don't need to install anything yourself.
However, you do need a (free) account to log in, and you should take a few minutes to familiarize yourself with the interface.

If you have not yet done so, please follow [this link](../../../envsetup/) before going any further.

## Materials provided

Throughout this training course, we'll be working in the `nf4-science/genomics/` directory, which you need to move into when you open the training workspace.
This directory contains all the code files, test data and accessory files you will need.

Feel free to explore the contents of this directory; the easiest way to do so is to use the file explorer on the left-hand side of the training workspace in the VSCode interface.
Alternatively, you can use the `tree` command.
Throughout the course, we use the output of `tree` to represent directory structure and contents in a readable form, sometimes with minor modifications for clarity.

Here we generate a table of contents to the second level down:

```bash
tree . -L 2
```

If you run this inside `nf4-science/genomics`, you should see the following output:

```console title="Directory contents"

.
├── data
│   ├── bam
│   ├── ref
│   ├── sample_bams.txt
│   └── samplesheet.csv
├── genomics-1.nf
├── genomics-2.nf
├── genomics-3.nf
├── genomics-4.nf
├── nextflow.config
└── solutions
    ├── modules
    ├── nf-test.config
    └── tests

6 directories, 8 files

```

!!!note

    Don't worry if this seems like a lot; we'll go through the relevant pieces at each step of the course.
    This is just meant to give you an overview.

**Here's a summary of what you should know to get started:**

- **The `.nf` files** are workflow scripts that are named based on what part of the course they're used in.

- **The file `nextflow.config`** is a configuration file that sets minimal environment properties.
  You can ignore it for now.

- **The `data` directory** contains input data and related resources, described later in the course.

_Completed workflows (solutions) will be added in the near future._

<!-- COMMENTED OUT UNTIL SOLUTIONS ARE READY (need to redo them)
- **The `solutions` directory** contains the completed workflow scripts that result from each step of the course.
  They are intended to be used as a reference to check your work and troubleshoot any issues.
  The name and number in the filename correspond to the step of the relevant part of the course.
  For example, the file `genomics-1-4.nf` is the expected result of completing steps 1 through 4 of _Part 1: Per-sample variant calling_ using the `genomics-1.nf` workflow.
-->

!!!tip

    If for whatever reason you move out of this directory, you can always run this command to return to it:

    ```bash
    cd /workspaces/training/nf4-science/genomics
    ```

Now, to begin the course, click on the arrow in the bottom right corner of this page.
