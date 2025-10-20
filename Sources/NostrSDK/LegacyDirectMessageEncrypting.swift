//
//  LegacyDirectMessageEncrypting.swift
//
//
//  Created by Joel Klabo on 8/10/23.
//

import Foundation
import secp256k1
import CommonCrypto
import CryptoKit

public enum LegacyDirectMessageEncryptingError: Error {
    case pubkeyInvalid
    case unsuccessfulExponentiation
    case encryptionError
    case decryptionError
    case missingValue
}

public protocol LegacyDirectMessageEncrypting {}
public extension LegacyDirectMessageEncrypting {

    /// Produces a `String` containing `content` that has been encrypted using a sender's `privateKey` and a recipient's `publicKey`.
    /// This function can `throw` in the case of a failure to create a shared secret, a failure to successfully encrypt, or an invalid `publicKey`.
    ///
    /// - Parameters:
    ///   - content: The content to encrypt.
    ///   - privateKey: The private key of the sender.
    ///   - publicKey: The public key of the intended recipient.
    /// - Returns: Encrypted content.
    /// > Warning: Deprecated in favor of [NIP-44](https://github.com/nostr-protocol/nips/blob/master/44.md) encryption and [NIP-59](https://github.com/nostr-protocol/nips/blob/master/59.md) seals and gift wraps..
    @available(*, deprecated, message: "Deprecated in favor of NIP-44 encryption and NIP-59 seals and gift wraps.")
    func legacyEncrypt(content: String, privateKey: PrivateKey, publicKey: PublicKey) throws -> String {
        throw LegacyDirectMessageEncryptingError.encryptionError
    }

    /// Produces a `String` containing `encryptedContent` that has been decrypted using a recipient's `privateKey` and a sender's `publicKey`.
    /// This function can `throw` in the case of a failure to create a shared secret, a failure to successfully encrypt, or an invalid `publicKey`.

    /// - Parameters:
    ///   - encryptedContent: The content to decrypt.
    ///   - privateKey: The private key of the receiver.
    ///   - publicKey: The public key of the sender.
    /// - Returns: The un-encrypted message.
    /// > Warning: Deprecated in favor of [NIP-44](https://github.com/nostr-protocol/nips/blob/master/44.md) encryption and [NIP-59](https://github.com/nostr-protocol/nips/blob/master/59.md) seals and gift wraps..
    @available(*, deprecated, message: "Deprecated in favor of NIP-44 encryption and NIP-59 seals and gift wraps.")
    func legacyDecrypt(encryptedContent message: String, privateKey: PrivateKey, publicKey: PublicKey) throws -> String {
        throw EventCreatingError.invalidInput
    }
}
