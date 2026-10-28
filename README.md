# Cloud Cost Watchdog

A lightweight, standard-library Python CLI that audits Azure subscriptions for idle or orphaned resources, calculates wasted spend, and safely recommends (or executes) auto-shutdown actions.

## Features

- **Cost Normalization**: Parses Azure Cost Management CSV exports and normalizes daily costs to a monthly run rate.
- **Idle Detection**: Finds VMs running below a 5% CPU threshold.
- **Orphan Detection**: Identifies unattached managed disks and idle public IPs.
- **Hard Guardrails**: Skips resources tagged `costwatchdog:protected` or in protected environments (`prod`).
- **Extensible Engine**: Reads local JSON fixtures or connects to the Azure SDK (coming soon).

## Quickstart

You can test the engine locally using the provided mock data in the `examples/` folder.

```bash
# Set the Python path to the src directory
$env:PYTHONPATH = "src"

# Run the audit
python -m costwatchdog.cli audit --cost-csv examples/cost-export.csv --inventory examples/inventory.json --metrics examples/metrics.json --policy examples/policy.json

Loading data...
Analyzing 3 resources...

--- Results ---
Actionable now:     $0.00/month
Pending approval:   $0.00/month

Architecture
billing.py - Parses CSV exports

detectors.py - Core logic for finding idle/orphan resources

engine.py - Evaluates policies and makes decisions

models.py - Dataclasses for Resources, Decisions, and Policies

cli.py - Command-line interface wrapper
