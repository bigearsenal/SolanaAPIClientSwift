//
//  SolanaService.swift
//  SolanaAPIClientSwift
//
//  Created by Chung Tran on 10/27/20.
//
import Foundation

public enum SolanaService {
    case getAccountInfo(account: String, configs: RequestConfiguration? = RequestConfiguration(encoding: "base58"))
    case getBalance(account: String, commitment: Commitment? = nil)
    case getBlockCommitment(block: String)
    case getBlockTime(block: String)
    case getClusterNodes
    case getConfirmedBlock(slot: UInt64, encoding: String = "json")
    case getConfirmedBlocks(startSlot: UInt64, endSlot: UInt64)
    case getConfirmedBlocksWithLimit(startSlot: UInt64, limit: UInt64)
    case getConfirmedSignaturesForAddress(account: String, startSlot: UInt64, endSlot: UInt64)
    case getConfirmedSignaturesForAddress2(account: String, configs: RequestConfiguration? = nil)
    case getConfirmedTransaction(transactionSignature: String, encoding: String = "json")
    case getEpochInfo(commitment: Commitment? = nil)
    case getEpochSchedule
    case getFeeCalculatorForBlockhash(blockhash: String, commitment: Commitment? = nil)
    case getFeeRateGovernor
    case getFees(commitment: Commitment? = nil)
    case getFirstAvailableBlock
    case getGenesisHash
    case getIdentity
    case getInflationGovernor(commitment: Commitment? = nil)
    case getInflationRate
    case getLargestAccounts
    case getLeaderSchedule(epoch: UInt64? = nil, commitment: Commitment? = nil)
    case getMinimumBalanceForRentExemption(dataLength: UInt64, commitment: Commitment? = nil)
    case getMultipleAccounts(pubkeys: [String], configs: RequestConfiguration? = nil)
    case getProgramAccounts(programPubkey: String, configs: RequestConfiguration? = nil)
    case getRecentBlockhash(commitment: Commitment? = nil)
    case getRecentPerformanceSamples(limit: UInt64)
    case getSignatureStatuses(pubkeys: [String], configs: RequestConfiguration? = nil)
    case getSlot(commitment: Commitment? = nil)
    case getSlotLeader(commitment: Commitment? = nil)
    case getStakeActivation(stakeAccount: String, configs: RequestConfiguration? = nil)
    case getSupply(commitment: Commitment? = nil)
    case getTransactionCount(commitment: Commitment? = nil)
    case getTokenAccountBalance(pubkey: String, commitment: Commitment? = nil)
    case getTokenAccountsByDelegate(pubkey: String, mint: String? = nil, programId: String? = nil, configs: RequestConfiguration? = nil)
    case getTokenAccountsByOwner(pubkey: String, mint: String? = nil, programId: String? = nil, configs: RequestConfiguration? = nil)
    case getTokenLargestAccounts(pubkey: String, commitment: Commitment? = nil)
    case getTokenSupply(pubkey: String, commitment: Commitment? = nil)
    case getVersion
    case getVoteAccounts(commitment: Commitment? = nil)
    case minimumLedgerSlot
    case requestAirdrop(account: String, lamports: UInt64, commitment: Commitment? = nil)
    case sendTransaction(serializedTransaction: String, configs: RequestConfiguration = RequestConfiguration(encoding: "base64")!)
    case simulateTransaction(transaction: String, configs: RequestConfiguration? = nil)
    case setLogFilter(filter: String)
    case validatorExit
}

