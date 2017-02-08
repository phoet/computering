headline 'Apache Cassandra'

quote(%(
Apache Cassandra is a free and open-source distributed database management system
designed to handle large amounts of data across many commodity servers,
providing high availability with no single point of failure.

Cassandra offers robust support for clusters spanning multiple datacenters,
with asynchronous masterless replication allowing low latency operations for all clients.
))

headline 'Cassandra Buzzwords'

list [
  'Highly scalable (for writes)',
  'Eventually consistent',
  'Distributed',
  'Structed Key-Value Store (aka Schema-less)',
]

headline 'System Architecture'

command '~/.iterm2/imgcat example/cassandra-writes.png'

headline 'MySQL vs. Cassandra'

list [
  'reads are fast <-> writes are fast',
  'row based <-> column based',
  'join tables <-> denormalized data',
  'column index <-> compound keys',
  'flexible queries <-> one table per query type',
  'ACID <-> INSERT = UPDATE = UPSERT',
  'CQL <-> SQL',
]

headline 'Cassandra Query Language'

code(%[
CREATE TABLE users (
  id bigint PRIMARY KEY,
  firstname text,
  lastname text
);

INSERT INTO users (id, firstname, lastname) VALUES (1, 'uschi', 'müller');
])

command %(cqlsh --keyspace test --execute "SELECT * FROM users")
command %(cqlsh --keyspace test --execute "SELECT * FROM users WHERE id = 1")
command %(cqlsh --keyspace test --execute "SELECT * FROM users WHERE firstname = 'uschi'")
command %(cqlsh --keyspace test --execute "SELECT * FROM users WHERE firstname = 'uschi' ALLOW FILTERING")

headline 'Ruby Support'

link 'Low-Level: Cassandra-Driver -> primitives & building blocks (DATASTAX)', 'http://datastax.github.io/ruby-driver/features/#executing-queries'
link 'High-Level: Cequel -> ActiveRecord like DSL', 'https://github.com/cequel/cequel#rails-integration'

paragraph 'what is this presentation thingy you are using?'

command 'gem install computering --source https://rubygems.org'

command 'cowsay -f bunny "Thank you for listening"'
