<?php

require_once 'connection.php';
require_once 'time_since.php';

if(isset($_POST['commentpress'])) {

    $comment_id = mt_rand(00000000, 99999999);

    $author = $_POST['author'];
    $comment = $_POST['comment'];

    $sql = "INSERT INTO comments (id, author, comment) VALUES ($comment_id, '$author','$comment')";

    $result = $conn->query($sql);

    if (!$result) {
        echo "Error inserting comments into database";
        die;
    }

    $sql = "SELECT * FROM comments WHERE id = $comment_id";

    $result = $conn->query($sql);

    $data = $result->fetch_assoc();


    echo '<li class="comment even thread-even depth-1 cui-item-comment animated fadeIn" id="cui-item-comment-49625"
    data-likes="0">
    <div id="cui-comment-49625" class="cui-comment cui-clearfix">
        <div class="cui-comment-avatar">
            <img src="assets/heart-icon-jst.png" />
        </div>
        <div class="cui-comment-content">
            <div class="cui-comment-info">
                <a class="cui-commenter-name" title="' . $data['author'] . '
                ">' . $data['author'] . '
                </a>
                <span class="cui-post-author-mark cui-post-author-"></span>
            </div>
            <div class="cui-comment-text">
                <p>' . $data['comment'] . '</p>
            </div>
            <div class="cui-comment-actions">
                <span class="cui-comment-time"><i class="far fa-clock"></i> ' . time_sice($data['create_time']) . '
                </span>
            </div>
        </div>
    </div>
    </li>';



} else {

    $sql = "SELECT * FROM comments";

    $result = $conn->query($sql);

    if (!$result) {
        echo "Error get commment from database";
        die;
    }

    ?>

<?php while ($data = $result->fetch_assoc()) : ?>

<li class="comment even thread-even depth-1 cui-item-comment animated fadeIn" id="cui-item-comment-49625"
    data-likes="0">
    <div id="cui-comment-49625" class="cui-comment cui-clearfix">
        <div class="cui-comment-avatar">
            <img src="assets/heart-icon-jst.png" />
        </div>
        <div class="cui-comment-content">
            <div class="cui-comment-info">
                <a class="cui-commenter-name" title="<?= $data['author']; ?>
                "><?= $data['author']; ?>
                </a>
                <span class="cui-post-author-mark cui-post-author-"></span>
            </div>
            <div class="cui-comment-text">
                <p><?= $data['comment']; ?>
                </p>
            </div>
            <div class="cui-comment-actions">
                <span class="cui-comment-time"><i class="far fa-clock"></i>
                    <?= time_sice($data['create_time']) ?>
                </span>
            </div>
        </div>
    </div>
</li>

<?php endwhile; ?>
<?php } ?>