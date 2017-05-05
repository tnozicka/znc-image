# znc-image
Containerized version of znc (non-root to run securely on OpenShift)

## Usage
 * Mount a volume at /var/lib/znc
 * Exec into the running instance and run `znc -d ${DATA_DIR} --makeconf`
 * Restart that container
