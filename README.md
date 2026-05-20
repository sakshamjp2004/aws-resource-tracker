# AWS Resource Tracker

A Bash script that tracks and reports AWS resource usage using AWS CLI.

---

## What it does

- Lists all EC2 instances
- Lists all S3 buckets
- Lists all Lambda functions
- Lists IAM user details
- Saves all output to a `ResourceTracker` file

---

## Prerequisites

- AWS CLI v2 installed
- EC2 instance with an IAM role attached (with permissions for EC2, S3, Lambda, IAM)
- `jq` installed for JSON parsing

---

## Installation

```bash
# Clone the repo
git clone https://github.com/sakshamjp2004/aws-resource-tracker.git

# Go into the folder
cd aws-resource-tracker

# Give execute permission
chmod +x resource.sh
