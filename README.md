# ARM (Automatic Ripping Machine) with QuickSync Support

This repository provides a comprehensive solution for deploying and maintaining an **Automatic Ripping Machine (ARM)** with **Intel QuickSync** support. ARM is a tool designed to automate the process of ripping and encoding media from optical discs, such as DVDs and Blu-rays. By leveraging Intel QuickSync, this setup ensures faster and more efficient video encoding by utilizing hardware acceleration.

## Features

- **Automated Disc Ripping**: Automatically detects and processes optical discs.
- **Intel QuickSync Support**: Hardware-accelerated video encoding for improved performance.
- **Customizable Configuration**: Tailor the setup to meet your specific needs.
- **Cross-Platform Compatibility**: Designed to work on various Linux distributions.
- **Open Source**: Fully transparent and community-driven.

## Prerequisites

Before deploying this solution, ensure you have the following:

1. **Hardware Requirements**:
  - A system with an Intel processor that supports QuickSync.
  - An optical drive capable of reading DVDs and/or Blu-rays.

2. **Software Requirements**:
  - A Linux-based operating system (e.g., Ubuntu, Debian, Fedora).
  - Docker and Docker Compose installed on your system.
  - Git for cloning this repository.

3. **Permissions**:
  - Sufficient privileges to install and configure software on your system.

## Installation

Follow these steps to deploy the ARM with QuickSync support:

1. **Clone the Repository**:
  ```bash
  git clone https://github.com/yourusername/armha.git
  cd armha
  ```

2. **Build and Deploy the Docker Containers**:
  ```bash
  docker-compose up -d
  ```

3. **Verify QuickSync Support**:
  Ensure your system recognizes Intel QuickSync by running:
  ```bash
  vainfo
  ```

4. **Configure ARM**:
  Edit the `config.yaml` file to customize the ARM settings according to your requirements.

5. **Start Ripping**:
  Insert a disc into your optical drive, and ARM will automatically detect and process it.

## Usage

- **Web Interface**: Access the ARM web interface at `http://<your-server-ip>:<port>` to monitor and manage ripping tasks.
- **Logs**: Check the logs for detailed information about the ripping and encoding process:
  ```bash
  docker logs arm-container
  ```

## Troubleshooting

- **QuickSync Not Detected**:
  - Ensure your Intel processor supports QuickSync.
  - Verify that the necessary drivers are installed on your system.

- **Disc Not Recognized**:
  - Confirm that the optical drive is properly connected.
  - Check the permissions for accessing the optical drive.

## Contributing

Contributions are welcome! If you encounter issues or have ideas for improvements, feel free to open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

## Acknowledgments

- The ARM community for their continuous development and support.
- Intel for providing QuickSync technology.

## Disclaimer

This repository is intended for personal use only. Ensure you comply with local laws and regulations regarding media ripping and encoding.
