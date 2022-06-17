import click

@click.command()
@click.option('--subject', type=int, required=True, help='The subject number to process.')
def main(subject):
    """Run my analsis."""

    print("This processes subject number", subject)

if __name__ == '__main__':
    main()
