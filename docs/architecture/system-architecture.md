# System Architecture

## Overview

Scarif.xyz is a decentralized platform that democratizes access to AI technologies while prioritizing privacy preservation and ensuring the authenticity of AI-generated content. Built on blockchain technology and zero-knowledge proofs, the platform fosters collaborative innovation and enables users to obtain temper-proof responses from AI models.


![Overview](resources/images/overview.png)


## Components

### 1. Smart Contracts

- **NFT Contract**: Manages the creation, ownership, and trading of AI-generated NFTs. Includes functionality for minting new NFTs and verifying authenticity using zero-knowledge proofs.
- **Authentication Contract**: A Noir zk prover that verifies the authenticity of AI-generated NFTs without relying on oracles.

### 2. Decentralized Storage

- **IPFS (InterPlanetary File System)**: Stores AI-generated content, associated metadata, and a record of NFTs minted on-chain. This ensures resilience, censorship resistance, and transparency in listing NFTs.

### 3. Client Interface

- **Web Interface**: Allows users to interact with the decentralized AI platform through a web browser. Enables browsing AI-generated content, minting NFTs, and verifying authenticity.

### 4. AI Models

- **Off-Chain Generative Models**: Generative models reside off-chain, leveraging distributed cloud compute for content generation. While models are not stored on-chain, their outputs (AI-generated content) are minted as NFTs and stored on IPFS.


## Workflow

1. **Content Generation**: Off-chain generative models generate art content based on input prompts or predefined styles, utilizing decentralized compute networks.
2. **NFT Minting**: Generated content is minted into NFTs on-chain, with metadata and a reference to the content stored on IPFS.
3. **Authenticity Verification**: The authentication contract verifies the authenticity of AI-generated NFTs using zero-knowledge proofs, ensuring trust without relying on oracles.
4. **Decentralized Storage**: AI-generated content, metadata, and a record of NFTs are stored on IPFS and on-chain.
