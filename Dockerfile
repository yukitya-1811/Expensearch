FROM ruby:3.2

# Install system dependencies
RUN apt-get update -qq && apt-get install -y \
    curl \
    git \
    build-essential \
    libpq-dev

# Install Node.js and npm using NodeSource
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

# Verify Node.js and npm installation
RUN node -v && npm -v

# Install Yarn
RUN npm install -g yarn

# Set working directory
WORKDIR /app

# Install Bundler
RUN gem install bundler

# Copy application files
COPY . .

# Install dependencies
RUN bundle install && yarn install

# Copy the entrypoint script and set it as the entrypoint
COPY entrypoint.sh /usr/bin/
ENTRYPOINT ["sh", "/usr/bin/entrypoint.sh"]

# Expose Rails port
EXPOSE 3000

# Start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]
