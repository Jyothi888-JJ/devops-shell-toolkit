# DevOps Shell Toolkit

A collection of practical Bash scripts for Linux system administration, server monitoring, troubleshooting, and DevOps automation.

## Scripts

| Script | Description |
|---|---|
| `check_servers.sh` | Checks disk usage across multiple remote servers |
| `cleanup.sh` | Finds large files on a remote server |
| `disk_check.sh` | Checks remote disk usage and alerts when usage exceeds a threshold |
| `logging.sh` | Captures system diagnostic information into a log file |
| `monitor.sh` | Checks a service and attempts automatic restart |
| `safe_cleanup.sh` | Performs controlled cleanup with path validation |
| `system.sh` | Performs a basic system health check |

## Technologies

- Bash
- Linux
- SSH
- systemctl
- awk
- sed
- df
- free
- find

## What This Project Demonstrates

- Linux system health monitoring
- Bash scripting
- Remote server administration using SSH
- Disk usage monitoring
- Log management
- Service monitoring and automatic recovery
- File management and cleanup
- Basic scripting safety and validation

## Usage

Make a script executable:

```bash
chmod +x system.sh
