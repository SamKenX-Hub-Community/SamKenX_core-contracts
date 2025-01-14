// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

/**
 * @notice data type representing validator in queue
 * @param validator the address of the validator
 * @param stake the amount staked by the validator
 * @param delegation the amount delegated to this validator
 */
struct QueuedValidator {
    address validator;
    int256 stake;
    int256 delegation;
}

/**
 * @notice data type for the management of the queue
 * @param indices position of a validator in the queue array
 * @param queue array of QueuedValidators
 */
struct ValidatorQueue {
    mapping(address => uint256) indices;
    QueuedValidator[] queue;
}
