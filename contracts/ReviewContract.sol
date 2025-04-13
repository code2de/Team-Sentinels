// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ReviewContract {
    struct Review {
        string content;
        uint8 rating;
        address reviewer;
    }

    Review[] public reviews;

    function addReview(string memory _content, uint8 _rating) public {
        require(_rating >= 1 && _rating <= 5, "Rating must be between 1 and 5");
        reviews.push(Review(_content, _rating, msg.sender));
    }

    function getReviewCount() public view returns (uint) {
        return reviews.length;
    }

    function getReview(uint index) public view returns (string memory, uint8, address) {
        require(index < reviews.length, "Invalid index");
        Review memory r = reviews[index];
        return (r.content, r.rating, r.reviewer);
    }
}
