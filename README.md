# ffmpeg_media_transcode_utillity

This batch script allows you to transcode video files in a specified folder using FFmpeg. It supports both MPEG-2 and HAP encoding.

## Prerequisites

1. **FFmpeg:**
   - Download and install FFmpeg from the official website: [FFmpeg Download](https://ffmpeg.org/download.html).
   - Set the correct path to the FFmpeg executable in the script.

2. **Input Folder:**
   - Prepare a folder containing the video files you want to transcode.

3. **Output Folder:**
   - Choose or create a folder where the transcoded files will be saved.

## Usage

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/your-username/your-repository.git
   cd your-repository

2. Configure the Script:
  Open the transcode.bat file in a text editor.
  Set the values for input_folder, output_folder, and ffmpeg_path.
  Save the changes.

3. Run the Script:
  Double-click on the transcode.bat file.
  Choose '1' for MPEG-2 or '2' for HAP encoding when prompted.
  The script will transcode all video files in the input folder and save them in the output folder.

4. Review Output:
  Check the command prompt for any error messages.
  Verify that the transcoded files are present in the specified output folder.
  Notes
  The script supports various video file extensions. It will process all files in the input folder regardless of their extension.
  For HAP encoding, the output files will have a .mov extension by default. Adjust this based on your requirements.
