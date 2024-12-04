import subprocess
import sys

# Define the Robot test suite or test case file
test_file = "test_transport_screenpythn -.robot"  # Replace with your test file name

# Define output directory for test results
output_dir = "results"  # You can specify a path here

# Command to run the Robot Framework tests
command = ["robot", "--outputdir", output_dir, test_file]

try:
    # Run the Robot Framework tests
    subprocess.run(command, check=True)
    print("Test execution completed successfully.")
except subprocess.CalledProcessError as e:
    print(f"Test execution failed with error: {e}")
    sys.exit(1)
