from setuptools import setup, find_packages

setup(
    name='apiverve_codedetector',
    version='1.2.1',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Code Detector identifies the programming language of any submitted code snippet. It returns the canonical language name, readable title, and standard file extension for the detected code.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/codedetector?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
