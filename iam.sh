#bin/bash

IAM User Creation Script

# Variables
IAM_USER_NAME="example_user"  # Change this to your desired username
GROUP_NAME="example_group"    # Change this to the desired group name
POLICY_ARN="arn:aws:iam::aws:policy/AdministratorAccess"  # Change this to the desired policy ARN

# Create IAM user
echo "Creating IAM user: $IAM_USER_NAME"
aws iam create-user --user-name "$IAM_USER_NAME"

# Create IAM group
echo "Creating IAM group: $GROUP_NAME"
aws iam create-group --group-name "$GROUP_NAME"

# Add user to group
echo "Adding user to group"
aws iam add-user-to-group --user-name "$IAM_USER_NAME" --group-name "$GROUP_NAME"

# Attach policy to group
echo "Attaching policy to group"
aws iam attach-group-policy --group-name "$GROUP_NAME" --policy-arn "$POLICY_ARN"

echo "IAM user creation process complete."


